use/repo:
	@$(call add_feature)
	@$(call add,STAGE1_PACKAGES,gnupg)
	@$(call try,REPO,rsync/alt)
	@$(call xport,ROOTFS_MAIN)
	@$(call xport,REPO)

use/repo/main:: sub/main use/repo; @:

ifeq (vm,$(IMAGE_CLASS))
use/repo/main::
	@$(call set,ROOTFS_MAIN,1)
	@$(call add,THE_PACKAGES,apt-repo-tools)
endif

use/repo/addon: use/repo/main
	@$(call set,MAIN_SUFFIX,addon)
