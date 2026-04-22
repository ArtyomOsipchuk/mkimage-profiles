#!/bin/sh
# Для "Сетевых протоколов в линукс"
if [ "$#" -lt 2 ]; then
	echo "Usage: ./vbmodify.sh [Path to our file (.vdi or .img)] [win | mac]"
	exit 0
fi
	
echo $1
Name="`echo $1 | sed -e 's/.*\///'`"
Name="`echo $Name | sed -e 's/.vdi$//'`"
Name="`echo $Name | sed -e 's/.img$//'`"
echo "Имя виртуальной машины $Name, откроется в $2."
Path=$1
MacMemory=1024
Memory=256
Vram=16
# if [ -f "~/VirtualBox VMs/${Name}" ]; then
#	echo "Машина с таким именем уже существует, просто сделаем ещё один snapshot."
#else
echo "Создаём машину с нуля..."
# базовые настройки
if [ "$3" = "mac" ]; then
	VBoxManage createvm --name "$Name" --register ‑‑platform‑architecture=arm
else
	VBoxManage createvm --name "$Name" --register
fi
VBoxManage modifyvm "$Name" --memory $Memory --vram $Vram --groups "/LinuxNetwork$(date +"%Y")" ‑‑graphicscontroller=vboxvga
if [ "$3" = "mac" ]; then
	VBoxManage modifyvm "$Name" --memory $MacMemory ‑‑graphicscontroller=qemuramfb
else
	VBoxManage setextradata "$Name" GUI/ScaleFactor 2.0
fi
echo "Подключаем наш образ"
VBoxManage storagectl "$Name" --name "Disks" --add virtio
VBoxManage storageattach "$Name" --storagectl "Disks" --port 0 --device 0 --type hdd --medium $Path
VBoxManage modifyvm "$Name" --usb on
VBoxManage modifyvm "$Name" --nic1 nat --nictype1 Am79C970A
VBoxManage modifyvm "$Name" --nic2 null --nicpromisc2 allow-all
VBoxManage modifyvm "$Name" --nic3 null --nicpromisc3 allow-all
VBoxManage modifyvm "$Name" --nic4 null --nicpromisc4 allow-all
VBoxManage modifyvm "$Name" --audio none
# VBoxManage modifyvm "$Name" --nat-pf1 "guestssh,tcp,,2222,,22"
echo "Пробрасываем соединение через COM-порт"
VBoxManage modifyvm "$Name" --uartmode1 tcpserver 2325 --uart1=0x03f8 4
VBoxManage export "$Name" --output "${Name}.ova"
echo "Снапшотим"
VBSnap="vbsnap `date +%Y%m%d` `date +%H`:`date +%M`"
VBoxManage snapshot "$Name" take "$VBSnap"
echo "Клонируем"
Group="`VBoxManage showvminfo "$Name" | sed -En 's/^Groups:[[:space:]]+([^,[:space:]]+).*/\1/p'`"
VBoxManage clonevm "$Name" --groups="$Group" --name="${Name}_clone_$VBSnap" --options=Link --register --snapshot "$VBSnap"
#VBoxManage clonevm "$Name" --groups="$Group" --name="$VBSnap" --register
VBoxManage startvm --type=headless "${Name}_clone_$VBSnap"
#LC_ALL=C LC_COLLATE=C LANG=C ssh user@localhost -p 2222
socat -,cfmakeraw,echo=0,escape=15 TCP4:localhost:2325
