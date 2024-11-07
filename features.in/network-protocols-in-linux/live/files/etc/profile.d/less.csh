setenv LESS "-MM"

test -f "$HOME/.less" || setenv LESSKEY "/etc/.less"

test ! -x /usr/share/less/lesspipe.sh || setenv LESSOPEN "|/usr/share/less/lesspipe.sh %s"
