#!/bin/sh

loadkeys us  # set key layout
timedatectl set-ntp true  # update system time
echo 'command mirrorlist'
sed -i '/Score/{/China/!{n;s/^/#/}}' /etc/pacman.d/mirrorlist  # command other score url
/bin/sh ./install
