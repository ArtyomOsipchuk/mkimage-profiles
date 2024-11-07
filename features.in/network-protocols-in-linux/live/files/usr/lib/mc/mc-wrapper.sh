MC_USER=`whoami`
[ ! -d ${TMPDIR-/tmp}/mc-$MC_USER ] && mkdir -p ${TMPDIR-/tmp}/mc-$MC_USER
if MC_PWD_FILE=`mktemp ${TMPDIR-/tmp}/mc-$MC_USER/mc.pwd.XXXXXXXXXX`; then
rm -f "$MC_PWD_FILE"
/usr/bin/mc -r -P "$MC_PWD_FILE" "$@"

if test -r "$MC_PWD_FILE"; then
	MC_PWD="`cat "$MC_PWD_FILE"`"
	if test -n "$MC_PWD" && test "$MC_PWD" != "$PWD" && test -d "$MC_PWD"; then
		cd "$MC_PWD"
	fi
	unset MC_PWD
fi

rm -f "$MC_PWD_FILE"
unset MC_PWD_FILE
unset MC_USER
fi
