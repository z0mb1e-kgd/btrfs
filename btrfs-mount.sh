partition-efi=/dev/sdX1
partition-system=/dev/sdX2
mount-folder=/mnt/YYY
mount -o rw,relatime,compress=zstd:10,ssd,space_cache=v2,subvol=/root ${partition-system} ${mount-folder}
mount -o rw,relatime,compress=zstd:10,ssd,space_cache=v2,subvol=/home ${partition-system} ${mount-folder}/home
mkdir ${mount-folder}/EFI
mount -o rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=ascii,shortname=mixed,utf8,errors=remount-ro ${partition-efi} ${mount-folder}/EFI
