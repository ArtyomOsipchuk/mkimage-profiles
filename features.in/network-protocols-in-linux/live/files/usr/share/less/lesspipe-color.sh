#!/bin/sh -e
#
# Usage:
# $ export LESSHIGHLIGHT=1
# $ less -R /path/to/file # file highlighted.
# $ less /path/to/file    # file without highlighting.

if [ -n "${LESSHIGHLIGHT-}" -a -n "${LESSCOLOR-}" -a -x /usr/bin/highlight ]; then
	cmd="/usr/bin/highlight"
	cmd_args=" -O xterm256 --failsafe"
fi
