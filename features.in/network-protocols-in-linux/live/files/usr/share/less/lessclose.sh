#!/bin/sh -e

ORIG="$1" && shift
TMP="$1" && shift

if [ -z "${TMP##/*}" -a -f "$TMP" ]; then
	/bin/rm -- "$TMP" </dev/null
fi
