# Пользовательские образы как цель этого гит-форка
# Профиль образа для кафедрального курса "Разработка программного обеспечения для GNU/Linux" АСВК

# make lindev-xfce.iso BRANCH=sisyphus
distro/lindev-xfce: distro/.regular-gtk mixin/regular-xfce; @:
	@$(call add,THE_LISTS,linux-app-development)
