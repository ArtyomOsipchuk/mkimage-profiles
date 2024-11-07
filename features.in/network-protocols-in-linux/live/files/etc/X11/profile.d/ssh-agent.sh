#!/bin/sh

[ -n "$SSH_AUTH_SOCK" ] ||
	eval `ssh-agent -u 2>/dev/null`
