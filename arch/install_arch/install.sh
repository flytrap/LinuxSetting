#!/bin/sh

root_path="/mnt"
loadkeys us  # set key layout
timedatectl set-ntp true  # update system time
echo 'command mirrorlist'
sed -i '/Score/{/China/!{n;s/^/#/}}' /etc/pacman.d/mirrorlist  # command other score url

echo 'start install base system...'

pacstrap $root_path base base-devel
genfstab -U $root_path >> /mnt/etc/fstab

cp `dirname $0`/after.sh $$root_path/root
cat ./start_after.sh >> /root/
echo 'please run after.sh'
arch-chroot $root_path /bin/bash
