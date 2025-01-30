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
			if [ -f "~/VirtualBox VMs/${Name}" ]; then
	   			echo "Машина с таким именем уже существует, просто сделаем ещё один snapshot."
			else
    				echo "Создаём машину с нуля..."
				# базовые настройки
				VBoxManage createvm --name "$Name" --register
				VBoxManage modifyvm "$Name" --memory $Memory --vram $Vram --groups "/LinuxNetwork2025"

				# Подключаем наш образ
				VBoxManage storagectl "$Name" --name "SATA Controller" --add sata --controller IntelAhci
				VBoxManage storageattach "$Name" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $Path
				# VBoxManage modifyvm "$Name" --usb on --usbohci on
				VBoxManage modifyvm "$Name" --nic1 nat --nictype1 Am79C970A
				VBoxManage modifyvm "$Name" --nic2 none --nictype2 82540EM
				VBoxManage modifyvm "$Name" --nic3 none --nictype3 82540EM
				VBoxManage modifyvm "$Name" --nic4 none --nictype4 82540EM
				echo "Пробрасываем наше соединение через ?обычный? порт 2222"
				VBoxManage modifyvm "$Name" --nat-pf1 "guestssh,tcp,,2222,,22"
				echo "Пробрасываем наше соединение через COM-порт 2025"
				VBoxManage modifyvm "$Name" --uartmode1 tcpserver 2025 --uart1=0x03f8 4
				VBoxManage export "$Name" --output "${Name}.ova"
			fi
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
	# покопавшись в конфиге sshd почему-то не смог сделать вход в root пользователя,
	# наверное это и не нужно, раз уж этот скрипт просто для тестовых запусков
	echo "!!!!!!!!!!!!!!!!!!! Тестерам полезно узнать, что Login=user Password=user !!!!!!!!!!!!!!!!!!!!!!!!!!!"
	#LC_ALL=C LC_COLLATE=C LANG=C ssh user@localhost -p 2222
	socat -,cfmakeraw,echo=0,escape=15 TCP4:localhost:2025
fi
