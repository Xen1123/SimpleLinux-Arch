#!/bin/bash
sudo pacman -S wget curl git base-devel bat nano vim fastfetch android-tools android-udev gvfs gvfs-mtp heimdall usbutils fish yt-dlp firefox plasma networkmanager flatpak sddm openssh konsole dolphin discord --needed --noconfirm
cd ~
rm -rf yay
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
mkdir -p ~/.config/fish
echo 'set fish_greeting ""' > ~/.config/fish/config.fish
echo "fastfetch --logo venom" >> ~/.config/fish/config.fish
yay -S localsend-bin --noconfirm
yay -S  balena-etcher --noconfirm
yay -S ventoy-bin --noconfirm
yay -S qdl --noconfirm
mkdir -p ~/Downloads
wget https://raw.githubusercontent.com/Froste5308/SimpleLinux/main/cheat-sheet.txt
mkdir -p ~/Desktop
cp -r ~/Downloads/cheat-sheet.txt ~/Desktop/cheat-sheet.txt
cd ~
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
sudo systemctl enable NetworkManager
sudo systemctl enable sshd
sudo systemctl start NetworkManager
sudo systemctl start NetworkManager
chsh -s /usr/bin/fish
clear
echo "Changing your shell typically requires a restart for it to fully take affect, would you like to reboot?"
PS3='Please Select Your Choice: '
options=("Restart" "Go To KDE")
select opt in "${options[@]}"
do
case $opt in
"Restart")
sudo reboot now
;;
"Go To KDE")
sudo systemctl enable --now sddm.service
exit
;;
*)
echo "Invalid Option $REPLY"
;;
esac
done
