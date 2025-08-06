#!/bin/bash

# Парсим /proc/cmdline и извлекаем mount=DEVICE1^MOUNT_POINT1;DEVICE2^MOUNT_POINT2
# где два уровня разделителей ; между парами, ^ между устройством и точкой монтирования
PUBLIC_MOUNT=$(grep -oP 'mount=\K[^ ]+' /proc/cmdline || echo "")

if [ -n "$PUBLIC_MOUNT" ]; then
    IFS=';' read -r -a pairs <<< "$PUBLIC_MOUNT"
    for pair in ${pairs[@]}; do
	IFS='^' read -r -a parts <<< "$pair"
	if [ ${#parts[@]} -eq 4 ]; then
		DEVICE="${parts[0]}"
		MOUNT_POINT="${parts[1]}"
		SUBDIR="${parts[2]}"
		BIND_MOUNT_POINT="${parts[3]}"
                mkdir -p "$MOUNT_POINT"
                mount "$DEVICE" "$MOUNT_POINT"
		mount --bind $MOUNT_POINT/$SUBDIR $BIND_MOUNT_POINT
	elif [ ${#parts[@]} -eq 2 ]; then
		DEVICE="${parts[0]}"
		MOUNT_POINT="${parts[1]}"
                mkdir -p "$MOUNT_POINT"
                mount "$DEVICE" "$MOUNT_POINT"
        fi
    done
fi
exit 0
