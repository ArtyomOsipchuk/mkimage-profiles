# Пользовательские образы как цель этого гит-форка
# Профиль образа для кафедрального курса «Практические аспекты сетевых протоколов в Linux» АСВК


# make ROOTPW=root vm/protocols-jeos.vdi BRANCH=sisyphus VM_SIZE=4294967296
vm/protocols-jeos: vm/.base-grub use/init/systemd \
	use/deflogin use/02protocols \
	use/services/lvm2-disable \
	use/tty/S0
ifneq (,$(filter-out i586 x86_64,$(ARCH)))
	@$(call add,DEFAULT_SERVICES_DISABLE,multipathd)
endif
	@$(call add,DEFAULT_SERVICES_ENABLE,sshd)
	@$(call add,DEFAULT_SERVICES_ENABLE,sethostname)
	@$(call add,DEFAULT_SERVICES_ENABLE,getty@tty1)
	@$(call add,DEFAULT_SERVICES_DISABLE,avahi-daemon.service)
	@$(call add,DEFAULT_SERVICES_DISABLE,avahi-daemon.socket)
	@$(call add,THE_LISTS,network-protocols-in-linux)
