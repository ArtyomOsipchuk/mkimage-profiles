vm/network-protocols-in-linux: vm/.base-grub use/deflogin use/network-protocols-in-linux
	@$(call add,BASE_PACKAGES,apt)
	@$(call add,THE_LISTS,network-protocols-in-linux)
