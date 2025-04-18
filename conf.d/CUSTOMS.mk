# Пользовательские образы как цель этого гит-форка
# Образ для компьютерного класса со старыми карточками NVidia

# make nvidia-asm-mate.iso BRANCH=sisyphus
distro/nvidia-asm-mate: distro/.regular-gtk mixin/regular-mate \
	use/x11/3d use/stage2/kms/nvidia; @:
	@$(call add,THE_LISTS,nvidia-asm-mate)
