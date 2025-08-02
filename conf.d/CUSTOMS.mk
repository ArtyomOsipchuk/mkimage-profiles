# Пользовательские образы как цель этого гит-форка
# Образ для практикума по питону для сетевой загрузки в компьютерных классах

# make prac-xfce.iso BRANCH=sisyphus
distro/prac-xfce: distro/.regular-gtk mixin/regular-xfce \
	use/03prac use/04mount use/05cmcldap; @:
	@$(call add,CLEANUP_PACKAGES,sudo)
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,sshd)
	@$(call add,SYSTEMD_SERVICES_ENABLE,uuid-mount.service)
	@$(call add,DEFAULT_SERVICES_ENABLE,rpc.statd)
	@$(call add,DEFAULT_SERVICES_ENABLE,nscd)
	@$(call add,DEFAULT_SERVICES_ENABLE,nslcd)
	@$(call add,DEFAULT_SERVICES_ENABLE,nfs-client.target)
	@$(call add,DEFAULT_SERVICES_ENABLE,prometheus-node_exporter.socket)
	@$(call add,DEFAULT_SERVICES_ENABLE,node_exporter-smart.timer)
	@$(call add,SYSTEMD_SERVICES_ENABLE,readme.service)
	@$(call add,DEFAULT_SERVICES_ENABLE,readme.service)
	@$(call add,CLEANUP_PACKAGES,chromium)
	@$(call add,SYSTEMD_SERVICES_ENABLE,replace-localdomain.service)
	@$(call add,DEFAULT_SERVICES_ENABLE,replace-localdomain.service)
	@$(call add,DEFAULT_SERVICES_ENABLE,NetworkManager ModemManager)
	@$(call add,CLEANUP_PACKAGES,etcnet)


# !!! на этой ветке удалена цель use/net/etcnet
# !!! на этой ветке модифицирована цель use/net/nm
