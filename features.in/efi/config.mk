EFI_ARCHES := x86_64 aarch64 riscv64 loongarch64

+efi: use/efi/signed use/efi/dtb; @:

ifeq (,$(filter-out $(EFI_ARCHES),$(ARCH)))

EFI_LISTS := $(call tags,base efi)

use/efi:
	@$(call add_feature)
	@$(call try,EFI_BOOTLOADER,grub-efi)	# default one
	@$(call xport,EFI_BOOTLOADER)
	@$(call add,BASE_LISTS,$(EFI_LISTS))
ifeq (distro,$(IMAGE_CLASS))
	@$(call add,STAGE2_PACKAGES,dosfstools fatresize)
	@$(call add,STAGE1_KCONFIG,EFI EFI_PARTITION EFIVAR_FS)
ifeq (x86_64,$(ARCH))
	@$(call add,BASE_PACKAGES,$$(EFI_SHELL))
endif
endif

use/efi/grub: use/efi use/bootloader/grub
	@$(call set,EFI_BOOTLOADER,grub-efi)

ifeq (x86_64,$(ARCH))
use/efi/shell: use/efi
	@$(call add,STAGE1_PACKAGES,efi-shell)
	@$(call add,GRUB_CFG,shell_efi)

use/efi/signed: use/efi
	@$(call set,EFI_CERT,altlinux)
	@$(call add,BASE_PACKAGES,shim-signed)
	@$(call add,RESCUE_PACKAGES,mokutil pesign)
	@$(call add,RESCUE_PACKAGES,openssl)
ifeq (,$(filter-out p10 c10f%,$(BRANCH)))
	@$(call add,STAGE1_PACKAGES,shim-signed-installer-kludge grub-efi alt-uefi-certs dosfstools mtools)
endif

else

use/efi/signed use/efi/shell: use/efi; @:

endif

ifeq (distro,$(IMAGE_CLASS))
use/efi/debug: use/efi
	@$(call add,STAGE2_PACKAGES,efibootmgr gdisk)
else
use/efi/debug: use/efi; @:
endif

else

# ignore on an unsupported target arch but make it hybrid at least
use/efi use/efi/signed use/efi/debug use/efi/grub \
  use/efi/shell: use/isohybrid; @:

endif

# copy devicetree for default kernel on ESP partition
use/efi/dtb: use/efi; @:
ifeq (distro,$(IMAGE_CLASS))
ifeq (,$(filter-out aarch64 riscv64,$(ARCH)))
	@$(call set,GLOBAL_COPY_DTB,1)
	@$(call add,EFI_FILES_REPLACE,dtb)
endif
endif

use/efi/memtest86:
	@echo Warning: use/efi/memtest86 is deprecated!!! >&2
