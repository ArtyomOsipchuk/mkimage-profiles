#!/bin/bash

PUBLIC_MOUNT=$(grep -oP 'mount=\K[^ ]+' /proc/cmdline || echo "")

if [ -n "$PUBLIC_MOUNT" ]; then
	IFS=';' read -r -a pairs <<< "$PUBLIC_MOUNT"
	for pair in ${pairs[@]}; do
		IFS='^' read -r -a parts <<< "$pair"
		if [ ${#parts[@]} -eq 4 ]; then
			LOWER="${parts[0]}"
			UPPER="${parts[1]}"
			WORK="${parts[2]}"
			MERGED="${parts[3]}"
			if [ -n $LOWER ]; then
				mkdir -p "$LOWER"
			fi
			if [ -n $UPPER ]; then
				mkdir -p "$UPPER"
			fi
			if [ -n $WORK ]; then
				mkdir -p "$WORK"
			fi
			if [ -n $MERGED ]; then
				mkdir -p "$MERGED"
			fi
			mount -t overlay overlay -olowerdir=$LOWER,upperdir=$UPPER,workdir=$WORK $MERGED
		elif [ ${#parts[@]} -eq 2 ]; then
			DEVICE="${parts[0]}"
			MOUNT_POINT="${parts[1]}"
			mkdir -p "$MOUNT_POINT"
			if [ -d "$DEVICE" ] && [ -d "$MOUNT_POINT" ]; then
				mount --bind "$DEVICE" "$MOUNT_POINT"
			else
				mount "$DEVICE" "$MOUNT_POINT"
			fi
		fi
	done
fi
exit 0
