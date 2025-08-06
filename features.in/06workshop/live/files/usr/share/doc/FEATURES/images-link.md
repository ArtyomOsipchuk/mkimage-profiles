=== FEATURES/nfs-link.service ===

# nfs-link.service

Сервис идёт в паре с uuid-mount.service. В факультетской сетевой загрузке uuid-mount.service, помимо прочих файловых систем, монтирует диск, содержащий образы, созданные в ходе занятий в точку /opt. Сервис images-link.service создаёт ссылку на каталог с вашими образами в /var/lib/libvirt/images при успешном монтировании.
