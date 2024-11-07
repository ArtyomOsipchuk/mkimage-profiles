# color-ls initialization

if [ -n "${TERM-}" -a -n "${PS1-}" ]; then

for color_ls in "$HOME/.dir_colors.$TERM" "$HOME/.dir_colors" \
		"$HOME/.dircolors.$TERM" "$HOME/.dircolors" \
		"/etc/DIR_COLORS.$TERM" "/etc/DIR_COLORS"; do
	[ -f "$color_ls" -a -r "$color_ls" ] || continue
	eval `dircolors --sh "$color_ls" ||:`
	if [ -z "${SHELL#*bash}" -o -z "${SHELL#*zsh}" ]; then
		if [ "$TERM" = 'emacs' ]; then
			alias ls='ls -N'
		else
			alias ls='ls --color=auto'
		fi
	fi
	break
done
unset color_ls

fi
