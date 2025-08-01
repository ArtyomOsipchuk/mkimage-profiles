# Пользовательские образы как цель этого гит-форка
# Образ для практикума по питону для сетевой загрузки в компьютерных классах

# make prac-xfce.iso BRANCH=sisyphus
distro/prac-xfce: distro/.regular-gtk mixin/regular-xfce \
	use/03prac; @:
	@$(call add,CLEANUP_PACKAGES,sudo)
