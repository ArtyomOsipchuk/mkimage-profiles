sudo systemctl mask udisks2.service
echo 'auto mounting of disks disabled'
sudo chmod 700 /bin/mount /bin/umount
echo 'mount and umount commands is root-only now'
