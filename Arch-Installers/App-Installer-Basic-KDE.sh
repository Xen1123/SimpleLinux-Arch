#!/bin/bash
cd /home/$USER
echo "This script installs a very basic, yet necessary group of apps for your Arch Linux system! It is not a script for installing Arch Linux itself!"
sleep 3
sudo pacman -S firefox fastfetch networkmanager openssh nano vim plasma android-tools gvfs gvfs-mtp yt-dlp konsole dolphin base-devel git wget curl usbutils --needed --noconfirm
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
clear && fastfetch
echo "Now configuring fastfetch!"
sleep 2
fastfetch --gen-config
