# color-ls initialization

if ($?TERM) then
if ($TERM != "") then

foreach color_ls (~/.dir_colors.$TERM ~/.dir_colors \
		~/.dircolors.$TERM ~/.dircolors \
		/etc/DIR_COLORS.$TERM /etc/DIR_COLORS)
	if (! -f $color_ls || ! -r $color_ls) then
		continue
	endif

	eval `dircolors -c $color_ls`
	if ($TERM == "emacs") then
		alias ls 'ls -N'
	else
		alias ls 'ls --color=auto'
	endif
	break
end
unsetenv color_ls

endif
endif
