## This causes GLib2 applications to convert filenames from
## locale encoding to UTF-8. If the locale encoding is already
## UTF-8 then it makes no difference.

setenv G_BROKEN_FILENAMES 1

# This causes GLib2 applications to convert filenames from
# G_FILENAME_ENCODING encoding to UTF-8.
# Any application can use G_FILENAME_ENCODING for this purposes
# or link natspec library

test -x /usr/bin/natspec && setenv G_FILENAME_ENCODING `/usr/bin/natspec -f`
