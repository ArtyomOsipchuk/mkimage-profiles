#!/bin/sh

cd "$WORKDIR"
find ALTLinux/ -name '*.rpm' | DEBUG=1 checksumgen -n -l - -o chksum/main.chksum
