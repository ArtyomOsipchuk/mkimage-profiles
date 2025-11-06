# Пользовательские образы как цель этого гит-форка
# Образ для практикума по питону для сетевой загрузки в компьютерных классах

# make prac-xfce.iso BRANCH=sisyphus
distro/prac-xfce: distro/.regular-desktop mixin/regular-xfce \
	use/alternatives use/services use/.03prac use/.05cmcldap use/.06workshop; @:

# make prac-xfce-virtualbox.iso BRANCH=sisyphus
distro/prac-xfce-virtualbox: distro/.regular-desktop mixin/regular-xfce \
	use/alternatives use/services use/.03prac use/.05cmcldap use/.07virtualbox; @:

use/.03prac: use/03prac
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,sshd)
	@$(call add,DEFAULT_SERVICES_ENABLE,rpc-statd)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,readme.service)
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,livecd-replace-localdomain)
	@$(call add,THE_LISTS,prac-class)
	@$(call add,THE_LISTS,prac-asm)
	@$(call add,CLEANUP_PACKAGES,chromium)
	@$(call add,CONTROL,su:public)
	@$(call add,ALTERNATIVES,/usr/bin/xbrowser:/usr/bin/firefox)
	@$(call add,CONTROL,sudo:restricted)
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,livecd-uuid-mount)
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,livecd-nftable-rules)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,livecd-net-backup)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,livecd-nfs-link)

#@$(call add,CLEANUP_PACKAGES,etcnet)

use/.05cmcldap: use/05cmcldap
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
	@$(call add,CONTROL,system-auth:ldap)
	@$(call add,CONTROL,lightdm-greeter-hide-users:hide)

use/.06workshop: use/06workshop
	@$(call add,DEFAULT_SERVICES_ENABLE,libvirtd)
	@$(call add,DEFAULT_SERVICES_ENABLE,avahi-daemon)
	@$(call add,DEFAULT_SERVICES_ENABLE,openssh-server)
	@$(call add,THE_LISTS,prac-workshop)

use/.07virtualbox: use/07virtualbox
	@$(call add,THE_LISTS,prac-virtualbox)
	@$(call add,DEFAULT_SERVICES_ENABLE,virtualbox)
	@$(call add,DEFAULT_SYSTEMD_USER_SERVICES_ENABLE,vbox-register.service)
	@$(call add,CONTROL,virtualbox:public)
