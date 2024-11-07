#!/bin/sh -efu

. shell-args

show_help()
{
  cat <<-EOF
	convertdev.sh - convert UUID=... or LABEL=... or /dev/disk/by-...
	                device representations into device names.

	Usage: $PROG <device>

	EOF
  exit
}

[ "$#" = 1 ] && [ "$1" != '-h' ] || show_help

dev="$1"

if [ "${dev#UUID=}" != "$dev" -o "${dev#LABEL=}" != "$dev" ]; then
  /sbin/blkid -t "$dev" | cut -f1 -d: | 
  while read dev; do
    [ -b "$dev" ] || continue
    printf "%s\n" "$dev"
    break
  done
else
  dev="$(readlink -e -- "$dev")"
  [ -b "$dev" ] && printf '%s\n' "$dev" ||:
fi
