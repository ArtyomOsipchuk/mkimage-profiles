use/mipsel-mitx: use/kernel
	@$(call add_feature)
	@$(call set,KFLAVOURS,mitx-def)

use/mipsel-mitx/x11: use/mipsel-mitx
	@$(call add,THE_PACKAGES,xorg-conf-sm750-tavolga)
