#!/bin/sh -efu
# get boot device from lilo.conf

liloconf="${1-/etc/lilo.conf}"

get_global(){
  sed -n -e "
    0,/^[[:space:]]*other\|^[[:space:]]*image/{
      s/^[[:space:]]*$1=[\"[:space:]]*\([^\"]\+\)[\"[:space:]]*/\1/p
      T; q # get only first line
    }
  " "$liloconf"
}

dev="$(get_global boot)"

# If raid-extra-boot=mbr-only then bootloader is installed
# in the MBR and not in the md device.
if [ "$(get_global raid-extra-boot)" = "mbr-only"\
     -a -z "${dev##/dev/md*}" ]; then

  # let's find disk on which one of the raid elements resides
  d="$(find /sys/block/${dev#/dev/}/slaves -type l -printf "%p\n" | head -n1)"
    # something like /sys/block/md0/slave/sda1
  d="$(readlink -e -- "$d")"
    # /sys/block/sda/sda1 on old kernels (2.6.18)
    # or /sys/devices/pci0000:00/0000:00:1f.2/host0/target0:0:0/0:0:0:0/block/sda/sda1

  d="${d##*/block/}"
  d="${d%%/*}"

  [ -z "$d" ] || dev="/dev/$d"
fi

convertdev.sh "$dev"
