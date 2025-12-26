# virtual machines
ifeq (vm,$(IMAGE_CLASS))

vm/mate-a11y: vm/systemd mixin/regular-vm-base \
	mixin/regular-desktop mixin/mate-base mixin/vm-archdep-x11 \
	use/deflogin/privileges use/deflogin/xgrp use/deflogin/hardware \
	use/deflogin/root use/x11-autologin use/l10n/ru_RU use/x11/lightdm/gtk \
	+systemd +vmguest \
	use/services/bluetooth-enable
	@$(call add,USERS,altlinux:altlinux:1:1)
	@$(call add,THE_PACKAGES,bluez blueman)
	@$(call add,THE_LISTS,a11y)
	@$(call add,THE_PACKAGES,theme-mate-windows)

vm/console-a11y: vm/systemd mixin/regular-vm-base use/l10n/ru_RU +vmguest \
	use/deflogin/root use/sound +nm; @:
	@$(call add,BASE_PACKAGES,espeakup)
	@$(call add,USERS,altlinux:altlinux:1:1)
	@$(call add,BASE_BOOTARGS,quiet)

endif
