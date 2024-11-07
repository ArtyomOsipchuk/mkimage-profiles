#!/bin/sh -e

FILE="$1" && shift
CMD=
TYPE=`/usr/bin/file -bL -- "$FILE"`

TMPFILE="$(mktemp -t "lessfile.XXXXXXXXXX")"
exit_handler()
{
	RETVAL=$?
	trap '' EXIT
	if [ -n "$TMPFILE" ]; then
		[ $RETVAL -eq 0 ] && echo "$TMPFILE" || rm -f -- "$TMPFILE"
	fi
	exit $RETVAL
}

trap exit_handler SIGHUP SIGINT SIGQUIT SIGTERM EXIT

case $TYPE in
	bzip\ compressed*|bzip2\ compressed*)
		CMD='/bin/bzcat -q --'
		;;
	gzip\ compressed*)
		CMD='/bin/zcat -q --'
		;;
	xz\ compressed*)
		CMD='/usr/bin/xzcat -q --'
		;;
	compress\'d\ data*)
		CMD='/usr/bin/uncompress -c'
		;;
esac

if [ -n "$CMD" ]; then
	CMD2=
	TYPE=`$CMD "$FILE" 2>/dev/null |/usr/bin/file -b -`
	case $TYPE in
		*tar\ archive*)
			CMD2='/bin/tar -tvv'
			;;
		*cpio\ archive*)
			CMD2='/bin/cpio -tv'
			;;
		ELF\ *|*\ ELF\ *)
			CMD2='/usr/bin/readelf'
			;;
		Linux/i386*|MS-DOS\ executable*|MS-Windows*|Win95\ executable*)
			CMD2='/usr/bin/strings'
			;;
		*troff\ or\ preprocessor\ input\ text*)
			CMD2='/usr/bin/nroff -t -mandoc'
			;;
	esac
	if [ -z "$CMD2" ]; then
		$CMD "$FILE" >"$TMPFILE" 2>&1
	else
		$CMD "$FILE" >"$TMPFILE" 2>&1 |$CMD2 2>&1
	fi
	exit
fi

case $TYPE in
	directory)
		CMD='/usr/bin/stat'
		;;
	PNG\ image*|JPEG\ image*|GIF\ image*|TIFF\ image*|X\ pixmap\ image*|MS\ Windows\ icon*)
		CMD='/usr/bin/identify'
		;;
	*tar\ archive*)
		CMD='/bin/tar -tvf'
		;;
	*cpio\ archive*)
		CMD='/bin/cpio -tv --quiet -I'
		;;
	Zip*)
		CMD='/usr/bin/unzip -l -qq --'
		;;
	Zoo*)
		CMD='/usr/bin/zoo xqp'
		;;
	ARC*)
		CMD='/usr/bin/arc pn'
		;;
	LHa*)
		CMD='/usr/bin/lha p'
		;;
	RAR*)
		CMD='/usr/bin/unrar p'
		;;
	RPM\ v*)
		CMD='/usr/bin/rpm -qilvp --lastchange --'
		;;
	current\ ar\ archive*)
		CMD='/usr/bin/ar tv'
		;;
	ELF\ *|*\ ELF\ *)
		CMD='/usr/bin/readelf -a --'
		;;
	Linux/i386*|MS-DOS\ executable*|MS-Windows*|Win95\ executable*)
		CMD='/usr/bin/strings --'
		;;
	*troff\ or\ preprocessor\ input\ text*)
		CMD='/usr/bin/nroff -t -mandoc --'
		;;
esac

if [ -n "$CMD" ]; then
	$CMD "$FILE" >"$TMPFILE" 2>&1
else
	exit 1
fi
