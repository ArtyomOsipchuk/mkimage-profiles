#!/bin/sh
# example script executed by mkimage in _instrumental_ chroot
# # (image-scripts.d/* get executed in _work_ chroot)
# #
# # NB: to be executed, it must be marked executable first :)
#
# # let's do something very useful
echo "$0: WORKDIR=$WORKDIR; directory listing:"
ls -l "$WORKDIR"
