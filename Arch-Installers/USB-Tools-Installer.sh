#!/bin/bash

echo -e "This Script Will Install A Set Of USB and Android Tinkering Tools, Yay AUR Helper Will Be Installed, As This Is An Arch Script That Uses Yay For Some Packages.\n"

sleep 10

sudo pacman -S git curl wget base-devel android-tools heimdall android-udev usbutils gvfs gvfs-mtp --needed --noconfirm

rm -rf /home/$USER/yay

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si --noconfirm

cd /home/$USER

sleep 3

echo -e "\nNow, Yay Will Be Used To Install Balena Etcher And Ventoy GUI/CLI, Please Kill The Script Within 10 Seconds If You Do Not Want These.\n"

sleep 10

yay -S  balena-etcher --noconfirm
yay -S ventoy-bin --noconfirm
yay -S qdl --noconfirm

clear

echo -e "USB Tools Have Been Installed, Along With Android ADB+Fastboot And Samsung Flasher For Linux (Heimdall), Please Practice Safe Flashing!\n"
