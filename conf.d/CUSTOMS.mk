# Пользовательские образы как цель этого гит-форка
# Образ для практикума по питону для сетевой загрузки в компьютерных классах

# !!! на этой ветке удалена цель use/net/etcnet
# !!! на этой ветке модифицирована цель use/net/nm
# !!! на этой ветке у use/live/x11 удалена цель use/x11-autologin
# !!! на этой ветке в use/live/base: удалена цель use/deflogin/live

# make prac-xfce.iso BRANCH=sisyphus
distro/prac-xfce: distro/.regular-gtk mixin/regular-xfce \
	use/.03prac use/04mount use/.05cmcldap use/.06workshop; @:

# make prac-xfce-virtualbox.iso BRANCH=sisyphus
distro/prac-xfce-virtualbox: distro/.regular-gtk mixin/regular-xfce \
	use/.03prac use/04mount use/.05cmcldap use/.07virtualbox; @:

use/.03prac: use/03prac;
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,sshd)
	@$(call add,DEFAULT_SERVICES_ENABLE,rpc.statd)
	@$(call add,DEFAULT_SERVICES_ENABLE,NetworkManager ModemManager)
	@$(call add,CLEANUP_PACKAGES,etcnet)
	@$(call add,CLEANUP_PACKAGES,sudo)
	@$(call add,CLEANUP_PACKAGES,chromium)
	@$(call add,THE_LISTS,prac-class)
	@$(call add,THE_LISTS,prac-asm)

use/.05cmcldap: use/05cmcldap;
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
	@$(call add,THE_LISTS,prac-ldap)

use/.06workshop: use/06workshop;
	@$(call add,DEFAULT_SERVICES_ENABLE,libvirtd)
	@$(call add,DEFAULT_SERVICES_ENABLE,avahi-daemon)
	@$(call add,DEFAULT_SERVICES_ENABLE,openssh-server)
	@$(call add,THE_LISTS,prac-workshop)

use/.07virtualbox: use/07virtualbox;
	@$(call add,THE_LISTS,prac-virtualbox)
	@$(call add,DEFAULT_SERVICES_ENABLE,virtualbox)


#	@$(call add,SYSTEMD_SERVICES_ENABLE,readme.service)
#	@$(call add,SYSTEMD_SERVICES_ENABLE,replace-localdomain.service)
#	@$(call add,SYSTEMD_SERVICES_ENABLE,uuid-mount.service)
