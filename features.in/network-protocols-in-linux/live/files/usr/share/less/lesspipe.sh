#!/bin/sh -e

[ -z "${LESSPIPE_DISABLED-}" ] ||
	exit 0

filename="$1" && shift
filetype="$(file -bLz -- "$filename")"

cmd_unpack=
case "$filetype" in
	*bzip\ compressed*|*bzip2\ compressed*)
		cmd_unpack='bzcat -q --'
		;;
	*gzip\ compressed*)
		cmd_unpack='zcat -q --'
		;;
	*[Xx][Zz]\ compressed*)
		cmd_unpack='xzcat -q --'
		;;
	*compress\'d\ data*)
		cmd_unpack='uncompress -c'
		;;
	*)
		[ -z "${FILENAME_IS_COMPRESSED_BY_LZMA-}" ] ||
			cmd_unpack='lzcat -q --'
		;;
esac

cmd_f=
[ -z "$cmd_unpack" ] || cmd_f=/dev/stdin

cmd=
cmd_args=
cmd_need_filename=

case "$filetype" in
	directory)
		cmd='stat'; cmd_args=''
		;;
	PNG\ image*|JPEG\ image*|GIF\ image*|TIFF\ image*|X\ pixmap\ image*|MS\ Windows\ icon*)
		cmd='identify'; cmd_args=''
		;;
	*tar\ archive*)
		cmd='tar'; cmd_args='-tvf'
		cmd_unpack=
		;;
	*cpio\ archive*)
		cmd='cpio'; cmd_args='-tv --quiet -I'
		;;
	*Zip\ archive*)
		cmd='unzip'; cmd_args='-l -qq --'
		;;
	*Zoo*)
		cmd='zoo'; cmd_args='xqp'
		;;
	*ARC*)
		cmd='arc'; cmd_args='pn'
		;;
	*LHa*)
		cmd='lha'; cmd_args='p'
		;;
	*RAR*)
		cmd='unrar'; cmd_args='l'
		;;
	RPM\ v*)
		cmd='rpm'; cmd_args='-qilvp --lastchange --'
		;;
	current\ ar\ archive*)
		cmd='ar'; cmd_args='tv'
		cmd_need_filename=1
		;;
	ELF\ *|data*)
		cmd='hexdump'; cmd_args='-C --'
		cmd_f=
		;;
	Linux/i386*|MS-DOS\ executable*|MS-Windows*|Win95\ executable*)
		cmd='strings'; cmd_args='--'
		;;
	*troff\ or\ preprocessor\ input\ text*)
		cmd='nroff'; cmd_args='-t -mandoc --'
		;;
	*OpenDocument\ Text*|*OpenOffice.org*\ document*)
		cmd='odt2txt'; cmd_args=
		cmd_need_filename=1
		;;
esac

for f in "${0%/*}"/lesspipe-* "${HOME-}/.less"/lesspipe-*; do
	[ ! -s "$f" ] || . "$f"
done

if [ -n "$cmd" ]; then
	type "$cmd" >/dev/null 2>&1 ||
		exit 0

	if [ -n "$cmd_unpack" ]; then
		[ -n "$cmd_need_filename" ] ||
			exec $cmd_unpack "$filename" |$cmd $cmd_args $cmd_f 2>&1
	else
		exec $cmd $cmd_args "$filename" 2>&1
	fi
else
	[ -z "$cmd_unpack" ] ||
		exec $cmd_unpack "$filename"
fi
