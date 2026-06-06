# default is plain text prompt
# NB: might be usbflash-ready hybrid iso

ifneq (,$(grub_arch))

use/grub: sub/stage1 $(ISOHYBRID:%=use/isohybrid)
	@$(call add_feature)
	@$(call set,RELNAME,ALT ($(IMAGE_NAME)))
	@$(call xport,GRUB_DEFAULT)

# UI is overwritten
use/grub/ui/%: use/grub
ifneq (,$(filter riscv64,$(ARCH)))
	@:
else
	@$(call set,GRUB_UI,$*)
	@$(call try,GRUB_GFXMODE,auto)
	@if [ "$*" == gfxboot ]; then \
		$(call add,STAGE1_BRANDING,bootloader); \
		$(call add,STAGE1_PACKAGES,grub-common); \
	fi
endif

use/grub/%.cfg: use/grub
	@$(call add,GRUB_CFG,$*)

use/grub/timeout/%: use/grub
	@$(call set,GRUB_TIMEOUT,$*)
else

use/grub: ; @:
use/grub/ui/% use/grub/%.cfg use/grub/timeout/%: ; @:

endif
