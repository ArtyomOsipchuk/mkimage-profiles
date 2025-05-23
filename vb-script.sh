#!/bin/sh
# Для "Сетевых протоколов в линукс"
if [ "$#" -lt 2 ]; then
	echo "Usage: ./vb-script.sh [Path to our file (.vdi or .img)] [qemu | vb]"
else
	echo $1
	Name="`echo $1 | sed -e 's/.*\///'`"
	Name="`echo $Name | sed -e 's/.vdi$//'`"
	Name="`echo $Name | sed -e 's/.img$//'`"
	echo "Имя виртуальной машины $Name, откроется в $2."
	Path=$1
	Memory=256
	Vram=16
	case "$2" in
		qemu)
			qemu-system-x86_64 -m $Memory -hda $Path -net nic -net user,hostfwd=tcp::2222-:22 ;;
		vb)
			# if [ -f "~/VirtualBox VMs/${Name}" ]; then
	   		#	echo "Машина с таким именем уже существует, просто сделаем ещё один snapshot."
			#else
    				echo "Создаём машину с нуля..."
				# базовые настройки
				VBoxManage createvm --name "$Name" --register
				VBoxManage modifyvm "$Name" --memory $Memory --vram $Vram --groups "/LinuxNetwork2025"
				VBoxManage setextradata "$Name" GUI/ScaleFactor 2.0
				# Подключаем наш образ
				VBoxManage storagectl "$Name" --name "SATA Controller" --add sata --controller IntelAhci
				VBoxManage storageattach "$Name" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $Path
				VBoxManage modifyvm "$Name" --usb on
				VBoxManage modifyvm "$Name" --nic1 nat --nictype1 Am79C970A
				VBoxManage modifyvm "$Name" --nic2 null --nicpromisc2 allow-all
				VBoxManage modifyvm "$Name" --nic3 null --nicpromisc3 allow-all
				VBoxManage modifyvm "$Name" --nic4 null --nicpromisc4 allow-all
				# VBoxManage modifyvm "$Name" --nat-pf1 "guestssh,tcp,,2222,,22"
				echo "Пробрасываем соединение через COM-порт"
				VBoxManage modifyvm "$Name" --uartmode1 tcpserver 2325 --uart1=0x03f8 4
				VBoxManage export "$Name" --output "${Name}.ova"
			#fi
			echo "Снапшотим"
			VBSnap="vbsnap `date +%Y%m%d` `date +%H`:`date +%M`"
			VBoxManage snapshot "$Name" take "$VBSnap"
			echo "Клонируем"
			Group="`VBoxManage showvminfo "$Name" | sed -En 's/^Groups:[[:space:]]+([^,[:space:]]+).*/\1/p'`"
			VBoxManage clonevm "$Name" --groups="$Group" --name="${Name}_clone_$VBSnap" --options=Link --register --snapshot "$VBSnap"
			#VBoxManage clonevm "$Name" --groups="$Group" --name="$VBSnap" --register
			VBoxManage startvm --type=headless "${Name}_clone_$VBSnap"
			;;
	esac
	#LC_ALL=C LC_COLLATE=C LANG=C ssh user@localhost -p 2222
	socat -,cfmakeraw,echo=0,escape=15 TCP4:localhost:2325
fi
