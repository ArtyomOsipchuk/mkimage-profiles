#!/bin/sh

cd "$WORKDIR"
find ALTLinux/ -name '*.rpm' | checksumgen -n -l - -o chksum/main.chksum
