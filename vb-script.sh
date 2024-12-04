#!/bin/sh
# пока только для "Сетевых протоколов в линукс"
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
			qemu -m $Memory -hda $Path -net nic -net user,hostfwd=tcp::2222-:22 ;;
		vb)
			if [ -f "~/VirtualBox VMs/${Name}" ]; then
	   			echo "Машина с таким именем уже существует, просто сделаем ещё один snapshot."
			else
    				echo "Создаём машину с нуля..."
				# базовые настройки
				VBoxManage createvm --name "$Name" --register
				VBoxManage modifyvm "$Name" --memory $Memory --vram $Vram

				# Подключаем наш образ
				VBoxManage storagectl "$Name" --name "SATA Controller" --add sata --controller IntelAhci
				VBoxManage storageattach "$Name" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium $Path
				# Надо ли нам экспортировать ova?
				VBoxManage export "$Name" --output "${Name}.ova"
			fi
			echo "Снапшотим"
			VBSnap="vbsnap `date +%Y%m%d` `date +%H`:`date +%M`"
			VBoxManage snapshot "$Name" take "$VBSnap"
			echo "Клонируем"
			Group="`VBoxManage showvminfo "$Name" | sed -En 's/^Groups:[[:space:]]+([^,[:space:]]+).*/\1/p'`"
			VBoxManage clonevm "$Name" --groups="$Group" --name="${Name}_clone" --options=Link --register --snapshot "$VBSnap"
			#VBoxManage clonevm "$Name" --groups="$Group" --name="$VBSnap" --register
			echo "Пробрасываем наше соединение через порт 2222 уже после создания снимка"
			VBoxManage modifyvm "$Name" --nic1 nat
			VBoxManage modifyvm "$Name" --nat-pf1 "guestssh,tcp,,2222,,22"
			VBoxManage startvm "$Name" --type headless
			;;
	esac
	# покопавшись в конфиге sshd почему-то не смог сделать вход в root пользователя,
	# наверное это и не нужно, раз уж этот скрипт просто для тестовых запусков
	echo "Login=user Password=user"
	ssh user@localhost -p 2222 #password=user или password=123
fi
