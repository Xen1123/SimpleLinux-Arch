#!/bin/bash
if ! sudo -v; then
echo "This script requires sudo privilages to run, please make sure your user is able to execute root commands."
exit 1
fi
cd /home/$USER
echo "This script installs a suite of apps on your Arch system and then sets them up!"
sleep 3
sudo pacman -S firefox heimdall figlet bat asciiquarium efibootmgr fish fwupd sddm fastfetch networkmanager openssh nano vim plasma android-tools gvfs gvfs-mtp yt-dlp konsole dolphin base-devel git wget curl usbutils --needed --noconfirm
mkdir -p ~/.config/fish
echo 'set fish_greeting""' > ~/.config/fish/config.fish
echo "fastfetch --logo venom" >> ~/.config/fish/config.fish
echo "alias pacman 'sudo pacman'" >> ~/.config/fish/config.fish
chsh -s /usr/bin/fish
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si --noconfirm
yay -S  balena-etcher --noconfirm
yay -S ventoy-bin --noconfirm
yay -S qdl --noconfirm
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
sudo systemctl enable sddm.service
sudo systemctl start sddm.service
exit
;;
*)
echo "Invalid Option $REPLY"
;;
esac
done
