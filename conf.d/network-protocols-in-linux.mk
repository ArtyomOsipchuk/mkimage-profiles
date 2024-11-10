# минимальная рабочая версия
vm/protocols-bare: vm/.base-grub vm/systemd use/deflogin/root use/02protocols
	@$(call add,THE_LISTS,network-protocols-in-linux)

# актуальная версия с большим функционалом
vm/protocols-jeos: vm/.base-grub use/init/systemd \
	use/deflogin use/02protocols \
	use/repo \
	use/net/etcnet use/net/dhcp \
	use/ntp/chrony \
	use/services/lvm2-disable
ifneq (,$(filter-out i586 x86_64,$(ARCH)))
	@$(call add,DEFAULT_SERVICES_DISABLE,multipathd)
endif
	@$(call add,DEFAULT_SERVICES_ENABLE,sshd)
	@$(call add,DEFAULT_SERVICES_ENABLE,getty@tty1 livecd-net-eth)
	@$(call add,THE_LISTS,network-protocols-in-linux)
	@$(call add,THE_PACKAGES,livecd-net-eth)

# В мейкфайлах неудобные комментарии :)
#
#vm/protocols-jeos: vm/.base-grub use/init/systemd \ нужная строчка, про неё нет сомнений
#        use/deflogin use/02protocols \ фича, чтобы выставлять пароль root ; моя фича, где я кладу файлы в образ и обрабатываю ключи
#        use/repo \ фича, которая подключает репозитории с пакетами (см. ниже мои сомнения)
#        use/net/etcnet use/net/dhcp \ см. ниже
#        use/ntp/chrony \ # см. ниже
#        use/services/lvm2-disable # см. ниже
#ifneq (,$(filter-out i586 x86_64,$(ARCH)))
#        @$(call add,DEFAULT_SERVICES_DISABLE,multipathd)
#endif
#        @$(call add,DEFAULT_SERVICES_ENABLE,sshd) # добавляем много интернет-сервисов
#        @$(call add,DEFAULT_SERVICES_ENABLE,getty@tty1 livecd-net-eth) # добавляем много интернет-сервисов
#        @$(call add,THE_LISTS,network-protocols-in-linux) # мой список пакетов!
#        @$(call add,THE_PACKAGES,livecd-net-eth) # не уверен, нужен ли нам этот пакет, ведь мы уже поставили всё "нужное"

# Все комментарии ниже идут про модули, которые я убрал или сомневаюсь:

# use/services/lvm2-disable фича огонь, включает-выключает systemd сервисы, надо взять в оборот

# use/net/etcnet use/net/dhcp вот это полезно, но не факт, что нужно по ТЗ.
# Эта фича конфигурирует базовую поддержку сети, включая нужную подсистему (etcnet, NetworkManager поверх etcnet или connman).

#use/wireless добавляет пакеты для беспроводного соединения + много весит

#use/firmware добавляет пакетов, но у нас и так есть все пакеты

#use/ntp/chrony настраивает точное время, но вроде нужно только для liveCD, живём ли мы в LIVECD?

#use/repo предназначена для конфигурирования репозиториев в образе, включая генерацию хэшей и подключение к LiveCD.
# 1) Вроде мы в фиче это и без неё делаем
# 2) С другой стороны, это единственное, чем bare отличается от всех остальных образов, значит это нужно

#@$(call add,KMODULES,staging) # Не разобрался, как убрать\поставить нужные ядра. конфигурироваться это должно тут.
#@$(call add,THE_PACKAGES,systemd-settings-disable-kill-user-processes) # не уверен
#@$(call add,BASE_PACKAGES,tzdata) # не уверен
#@$(call add,THE_LISTS, $(call tags,base && network)) # не уверен, и без них работает
