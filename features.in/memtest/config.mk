ifeq (,$(filter-out i586 x86_64 loongarch64,$(ARCH)))
use/memtest: use/syslinux use/grub
	@$(call add_feature)
	@$(call add,BASE_PACKAGES,memtest86+)
	@$(call add,STAGE1_PACKAGES,memtest86+)
	@$(call add,SYSLINUX_CFG,memtest)
	@$(call add,GRUB_CFG,memtest)
else
use/memtest: ; @:
endif
# see also use/efi/memtest86
