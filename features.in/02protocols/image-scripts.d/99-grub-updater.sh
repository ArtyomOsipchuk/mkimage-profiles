# ещё нет mount /dev поэтому не фурычит update-grub
#mount -o udev /dev  
#echo '''
##imagescripts.d
#GRUB_TERMINAL_OUTPUT='serial console'
#GRUB_TERMINAL_INPUT='serial console'
#GRUB_SERIAL_COMMAND='serial --unit=0 --speed=115200'
#GRUB_TIMEOUT=30
#''' >> /etc/sysconfig/grub2
#grub-mkconfig -o /boot/grub/grub.cfg
#update-grub
