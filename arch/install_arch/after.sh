#!/bin/sh
hostname="flytrap"
echo $hostname > /etc/hostname  # set hostname
passwd  # set root passwd

# install zsh
pacman -Syu --noconfirm i3 zsh sakura feh scrot thunar grub emacs  # install zsh

echo "add a new user:"
read username
if [ useradd $username && passwd $username && su $username ]; then
    chsh -s /bin/zsh  # change default shell to zsh
else
    echo 'add user error'
fi

systemctl enable dhcpcd  # the boot is start dhcp

root_disk=`df |grep "/$" |cut -d ' ' -f1`
echo 'install grub'
grub-install --boot-directory=/boot $root_disk  # install grub to disk
grub-mkconfig -o /boot/grub/grub.cfg
exit
systemctl reboot
