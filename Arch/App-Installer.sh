#!/bin/bash
if ! sudo -v; then
echo "This script requires sudo privilages to run, please make sure your user is able to execute root commands."
exit 1
fi
cd /home/$USER
echo "This script installs a very basic, yet necessary group of apps for your Arch Linux system! It is not a script for installing Arch Linux itself!"
sleep 3
sudo pacman -S firefox efibootmgr fwupd sddm fastfetch networkmanager openssh nano vim plasma android-tools gvfs gvfs-mtp yt-dlp konsole dolphin base-devel git wget curl usbutils --needed --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
clear && fastfetch
echo "Now configuring fastfetch!"
sleep 2
fastfetch --gen-config
(
echo "{"
echo '"$schema": "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json",'
echo '"modules": ['
echo '"title",'
echo '"separator",'
echo '"os",'
echo '"host",'
echo '"kernel",'
echo '"uptime",'
echo '"packages",'
echo '"terminal",'
echo '"cpu",'
echo '"gpu",'
echo '"memory",'
echo '"swap",'
echo '"disk",'
echo '"localip",'
echo '"battery",'
echo '"break",'
echo '"colors"'
echo "]"
echo "}"
) > ~/.config/fastfetch/config.jsonc 
sudo systemctl enable NetworkManager sshd
sudo systemctl start NetworkManager sshd
sudo systemctl enable --now sddm.service
