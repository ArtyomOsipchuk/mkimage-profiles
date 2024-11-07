#!/bin/bash -efu
# bash is here for \xFF symbols

. shell-args

show_help()
{
	cat <<EOF
detectloader - detects bootloader on the given device

Usage: $PROG [options] <filename>

<filename> must specify seekable regular file or device.

Options:
  -q, --quiet                       try to be more quiet;
  -v, --verbose                     print a message for each action;
  -V, --version                     print program version and exit;
  -h, --help                        show this text and exit.

Report bugs to http://bugs.altlinux.ru/

EOF
	exit
}

print_version()
{
	echo $PROG version
	exit
}

TEMP=`getopt -n $PROG -o $getopt_common_opts -l $getopt_common_longopts -- "$@"` ||
	show_usage
eval set -- "$TEMP"

while :; do
	case "$1" in
		--) shift; break
			;;
		*) parse_common_option "$1"
			;;
	esac
	shift
done

[ "$#" -ge 1 ] || show_usage 'Insufficient arguments.'
[ "$#" -le 1 ] || show_usage 'Too many arguments.'

f="${1}"
[ -s "$f" -o -b "$f" ] || fatal "$f: not a file or block device"
[ -r "$f" ] || fatal "$f: permission denied for reading"

test_magic()
{
  # Use decimal (123), octal (0123), or hex (0x123) digits for an offset.
  # Use any string for a value.
  # Use any number of <offset> <value> pairs in parameters.
  # example: test_magic /dev/sda 0x2 LILO

	while [ -n "${1-}" ]; do
		local off="${1-}"
		local val="$(printf "${2-}" |
			od --address-radix=n --format=x1 |
			tr -d '\n')"
		shift 2
		[ -n "$off" -a -n "$val" ] ||
			fatal "test_magic: error in parameters"
		off="$(($off))"

		local len=${#val}
		len="$(($len/3))" # od gives 3 chars per byte
		local out="$(od --address-radix=n --format=x1 \
				--skip-bytes="$off" --read-bytes="$len" "$f" |
			tr -d '\n')"
		verbose "comparing <$out> at offset $off with <$val>"
		[ "$out" = "$val" ] || return 2
	done
	return 0
}

T()
{
	name="$1"; shift
	verbose "* test for $name bootloader:"
	if test_magic "$@"; then
		printf '%s\n' "$name"
		exit 0
	fi
}

T empty		0	"\000\000\000\000"
T grub		0	"\xEBG" 0x17d "stage1 \000"
T grub		0	"\xEBH" 0x17e "stage1 \000"
T grub		0	"\xEBH" 0x18a "stage1 \000"
T grub		0	"\xEBH" 0x181 "GRUB \000"
T grub		0x188	"GRUB \000"
T grub		0x180	"GRUB \000"
T lilo		2	"LILO"
T lilo		6	"LILO"
T grub		6	"GRUB"
T osbs		2	"OSBS" #- http://www.prz.tu-berlin.de/~wolf/os-bs.html
T pqmagic	0xEF	"PQV"
T BootStar	0x130	"BootStar:"
T DocsBoot	0x148	"DocsBoot"
T system_commander 0x1ad	"SYSCMNDRSYS"
T BeOs		0x24	"Boot Manager"
T os2		0	"\xFA\xB8\x30\x00" 0xfa "OS/2"
T TimO		0	"IBM Thinkpad hibernation partition"
T dos		0xa0	"\x25\x03\x4E\x02\xCD\x13"
T dos		0xa0	"\x00\xB4\x08\xCD\x13\x72" #- nt2k's
T dos		0x60	"\xBB\x00\x7C\xB8\x01\x02\x57\xCD\x13\x5F\x73\x0C\x33\xC0\xCD\x13" #- nt's
T dos		0x70	"\x0C\x33\xC0\xCD\x13\x4F\x75\xED\xBE\xA3"
T freebsd	0xC0	"\x00\x30\xE4\xCD\x16\xCD\x19\xBB\x07\x00\xB4"
T freebsd	0x160	"\x6A\x10\x89\xE6\x48\x80\xCC\x40\xCD\x13"
T dummy		0xAC	"\x0E\xB3\x07\x56\xCD\x10\x5E\xEB" #- caldera?
T ranish	0x100	"\x6A\x10\xB4\x42\x8B\xF4\xCD\x13\x8B\xE5\x73"
T extlinux	0	"\xFA\x31\xC0\x8E\xD8\x8E\xD0\xBC\x00\x7C\x89\xE6\x06\x57\x8E\xC0\xFB" #- mbr.bin, altmbr.bin, gptmbr.bin
T os2		0x1c2	"\x0A"
T Acronis	0	"\xE8\x12\x01"
