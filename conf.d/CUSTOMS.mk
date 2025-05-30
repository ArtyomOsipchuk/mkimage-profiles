# Пользовательские образы как цель этого гит-форка
#Образ для воркшопа по установке и настройке дистрибутивов

# make workshop-mate.iso BRANCH=sisyphus
distro/workshop-mate: distro/.regular-gtk mixin/regular-mate \
	use/deflogin/live use/05workshop; @:
	@$(call add,DEFAULT_SERVICES_ENABLE,openssh-server)
	@$(call add,DEFAULT_SERVICES_ENABLE,avahi-daemon)
	@$(call add,DEFAULT_SERVICES_ENABLE,publicmount)
	@$(call add,USERS,workshop:::)
	@$(call add,THE_LISTS,workshop)
