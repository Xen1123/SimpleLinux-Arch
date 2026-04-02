#!/bin/bash
if ! sudo -v; then
echo "This script requires sudo privilages to run, please make sure your user is able to execute root commands."
exit 1
fi
sudo pacman -S wget curl git base-devel bat nano vim scrcpy fastfetch android-tools android-udev gvfs gvfs-mtp heimdall usbutils fish yt-dlp plasma networkmanager flatpak sddm openssh konsole dolphin --needed --noconfirm
cd
rm -rf yay
		git clone https://aur.archlinux.org/yay.git
		cd yay
		makepkg -si --noconfirm
mkdir -p ~/.config/fish
echo 'set fish_greeting ""' > ~/.config/fish/config.fish
echo "fastfetch --logo venom" >> ~/.config/fish/config.fish
	yay -S balena-etcher --noconfirm
	yay -S ventoy-bin --noconfirm
	yay -S qdl --noconfirm
mkdir -p ~/Downloads
wget https://raw.githubusercontent.com/Froste5308/SimpleLinux/main/cheat-sheet.txt
mkdir -p ~/Desktop
cp ~/Downloads/cheat-sheet.txt ~/Desktop/cheat-sheet.txt
cd
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
sudo systemctl enable sddm.service
sudo systemctl start NetworkManager
sudo systemctl start NetworkManager
chsh -s /usr/bin/fish
clear
PS3='Would You Like Firefox or Chrome?'
options=('Firefox' 'Google Chrome')

select opt in "${options[@]}"
do
	case $opt in
		"Firefox")
			sudo pacman -S firefox
			break
			;;
		"Google Chrome")
			yay -S google-chrome --noconfirm
			break
			;;
		*)
			echo "Invalid Option $REPLY"
			;;
esac
done

clear
PS3='Would You Like Localsend, Vesktop (Modded Discrod), or Both?'
options=('Localsend' 'Vesktop' 'Both')

select $opt in "${options[@]}"
do
	case $opt in
		"Localsend")
			yay -S localsend-bin --noconfirm
			break
			;;
		"Vesktop")
			yay -S vesktop-bin --noconfirm
			break
			;;
		"Both")
			yay -S vesktop-bin --noconfirm
			yay -S localsend-bin --noconfirm
			break
			;;
	esac
	done

clear
echo "Changing your shell typically requires a restart for it to fully take affect, would you like to reboot?"
PS3='Please Select Your Choice: '
options=("Restart" "Go To KDE" "Exit To Typing")

select opt in "${options[@]}"
do
	case $opt in
		"Restart")
			sudo reboot now
			;;
		"Exit To Typing")
			exit
			;;
		"Go To KDE")
			sudo systemctl start sddm.service
			;;
		*)
			echo "Invalid Option $REPLY"
			;;
	esac
	done
