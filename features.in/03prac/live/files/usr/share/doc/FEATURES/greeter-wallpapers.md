=== FEATURES/desktop-wallpapers ===

# desktop-wallpapers

Скрипт выполняется на стадии создания образа. Он дописывает в файл настроек lightdm-gtk-greeter указание на заданный разработчиком файл обоев.
В файле `/etc/lightdm/lightdm-gtk-greeter.conf` появляется строчка `background=/usr/share/backgrounds/xfce/xfce-cp-dark.svg`.
