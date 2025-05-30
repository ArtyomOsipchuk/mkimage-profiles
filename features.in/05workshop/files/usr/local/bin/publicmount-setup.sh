#!/bin/bash

# Парсим /proc/cmdline и извлекаем publicmount=UUID/subdir
PUBLIC_MOUNT=$(grep -oP 'publicmount=\K[^ ]+' /proc/cmdline || echo "")

# Если параметр не передан, используем значения по умолчанию
if [ -z "$PUBLIC_MOUNT" ]; then
    UUID="default-uuid"
    SUBDIR="default-subdir"
else
    # Разделяем UUID и подкаталог
    IFS='/' read -r UUID SUBDIR <<< "$PUBLIC_MOUNT"
fi

# Проверяем, что UUID не пустой
if [ -z "$UUID" ]; then
    echo "Error: UUID not specified!" >&2
    exit 1
fi

# Монтируем устройство по UUID в /opt
MOUNT_POINT="/opt"
DEVICE="/dev/disk/by-uuid/$UUID"

# Создаём точку монтирования, если её нет
mkdir -p "$MOUNT_POINT"

# Пробуем смонтировать
if ! mount "$DEVICE" "$MOUNT_POINT"; then
    echo "Failed to mount $DEVICE at $MOUNT_POINT" >&2
    exit 1
fi

# Создаём подкаталог, если его нет
FULL_PATH="$MOUNT_POINT/$SUBDIR"
mkdir -p "$FULL_PATH"

# Удаляем старую /var/lib/libvirt/images (если есть)
rm -rf /var/lib/libvirt/images

# Создаём симлинк
ln -s "$FULL_PATH" /var/lib/libvirt/images

echo "Successfully mounted $DEVICE at $MOUNT_POINT and linked to /var/lib/libvirt/images"
exit 0