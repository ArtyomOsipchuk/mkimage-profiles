# ALT Linux bash configuration: common aliases for the system.

# If exist an ~/.alias and the user hasn't specified a
# LOAD_SYSTEM_ALIASES variable, then don't load any system aliases
#
# If user has specified a IGNORE_SYSTEM_ALIASES variable,
# then also don't load any system aliases.

[ -n "$LOAD_SYSTEM_ALIASES" -o ! -f "$HOME/.alias" ] || return 0
[ -z "$IGNORE_SYSTEM_ALIASES" ] || return 0

# Human readable disk space usage.
alias du='du -h'
alias df='df -h -x supermount'

# Enforce prompts.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Various types of ls.
case "$TERM" in
	*emacs*)
		# Do not quote file names.
		alias ls='ls -N'
		;;
	*)
		# Only use color if standard output is a terminal.
		alias ls='ls --color=auto'
		;;
esac
alias l='ls -lapt'	# Detailed listing, sorted by modification time.
alias ll='ls -laptc'	# Detailed listing, sorted by change time.

# Oftenly used shortcuts.
alias md='mkdir'
alias rd='rmdir'
alias cd..='cd ..'
alias su-='su -'
