# Пользовательские образы как цель этого гит-форка
# Образ для практикума по питону для сетевой загрузки в компьютерных классах

# !!! на этой ветке удалена цель use/net/etcnet
# !!! на этой ветке модифицирована цель use/net/nm
# !!! на этой ветке у use/live/x11 удалена цель use/x11-autologin
# !!! на этой ветке в use/live/base: удалена цель use/deflogin/live

#
distro/.C_regular-desktop: distro/.C_regular-wm use/branding/full \
        use/firmware/laptop +systemd +vmguest \
        use/live-install/oem use/services/bluetooth-enable \
        use/live/rescue
	@$(call add,THE_PACKAGES,bluez)

#
distro/.C_regular-wm: distro/.C_regular-x11 \
        mixin/regular-desktop use/vmguest/dri \
        use/live/rw +live-installer use/live-install/desktop \
        use/live-install/repo
	@$(call set,GRUB_DEFAULT,live)
	@$(call set,SYSLINUX_DEFAULT,live)
	@$(call set,MAIN_KERNEL_SAVE,yes)
ifeq (,$(filter-out i586 x86_64,$(ARCH)))
	@$(call add,THE_PACKAGES,xorg-drv-vmware) # for virtualbox with VMSVGA
endif

# wm -> 
distro/.C_regular-x11: distro/.regular-base mixin/regular-x11 \
        use/x11/wacom use/x11/amdgpu +wireless \
        use/live/.base use/live/repo \
        use/live/suspend \
        use/syslinux/ui/gfxboot use/grub/ui/gfxboot use/grub/safe-mode.cfg
	@$(call add,THE_BRANDING,bootloader)
	@$(call add,THE_LISTS,$(call tags,(base || desktop) && regular))
	@$(call add,LIVE_PACKAGES,livecd-rescue-base-utils)
	@$(call add,MAIN_LISTS,kernel-headers)
	@$(call add,DEFAULT_SERVICES_DISABLE,gpm powertop)

# +nm-gtk
mixin/C_xfce-base: use/x11/xfce use/x11/gtk/C_nm \
        use/fonts/ttf/redhat use/fonts/ttf/google/extra
	@$(call add,THE_PACKAGES,xfce4-regular)
	@$(call add,THE_PACKAGES,xreader)
	@$(call add,THE_PACKAGES,xdg-user-dirs-gtk)
	@$(call add,THE_PACKAGES,xkill)
# ->
use/x11/gtk/C_nm: use/net/C_nm
	@$(call add,THE_LISTS,network/NetworkManager-gtk)

#use/x11/xfce: use/x11
#        @$(call add,THE_LISTS,xfce/xfce4-default)
#        @$(call add,IM_PACKAGES,imsettings-xfce)
# -> 
#  тут что-то удалено, верни это в оригинал
use/net/C_nm: use/net
	@$(call set,THE_NET_SUBSYS,NetworkManager)
	@$(call add,THE_LISTS,network/NetworkManager)  # NB: won't get overridden
	@$(call add,DEFAULT_SERVICES_ENABLE,network) # need for NM?
	@$(call add,DEFAULT_SERVICES_ENABLE,NetworkManager ModemManager)
	@$(call xport,NM_native)
	@$(call add,DEFAULT_SERVICES_ENABLE,livecd-save-nfs) # keep interface up

#
mixin/C_regular-xfce: mixin/C_xfce-base use/domain-client +pipewire
	@$(call add,THE_PACKAGES,pavucontrol xscreensaver-frontend)
	@$(call add,THE_PACKAGES,xfce4-pulseaudio-plugin xfce-polkit)
	@$(call set,DEFAULT_SESSION,xfce)

# make prac-xfce.iso BRANCH=sisyphus
distro/prac-xfce: distro/.regular-desktop mixin/regular-xfce \
	use/alternatives use/services use/.03prac use/.04mount use/.05cmcldap use/.06workshop; @:

# make prac-xfce-virtualbox.iso BRANCH=sisyphus
distro/prac-xfce-virtualbox: distro/.regular-desktop mixin/regular-xfce \
	use/alternatives use/services use/.03prac use/.04mount use/.05cmcldap use/.07virtualbox; @:

use/.03prac: use/03prac
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,sshd)
	@$(call add,DEFAULT_SERVICES_ENABLE,rpc.statd)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,readme.service)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,replace-localdomain.service)
	@$(call add,THE_LISTS,prac-class)
	@$(call add,THE_LISTS,prac-asm)
	@$(call add,CLEANUP_PACKAGES,chromium)
	@$(call add,CONTROL,su:public)
	@$(call add,ALTERNATIVES,/usr/bin/xbrowser:/usr/bin/firefox)
	@$(call add,CONTROL,sudo:restricted)

#@$(call add,CLEANUP_PACKAGES,etcnet)

use/.04mount: use/04mount
	@$(call add,DEFAULT_SYSTEMD_SERVICES_ENABLE,uuid-mount)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,net-backup.service)
	@$(call add,SYSTEMD_USER_SERVICES_ENABLE,nfs-link.service)

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
