#!/bin/sh

cd "$WORKDIR"
find ALTLinux/ -name '*.rpm' | checksumgen -v -n -l - -o chksum/main.chksum
