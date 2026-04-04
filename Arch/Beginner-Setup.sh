#!/bin/bash
if ! sudo -v; then
echo "This script requires sudo privilages to run, please make sure your user is able to execute root commands."
exit 1
fi
sudo pacman -S wget okular eog wl-clipboard curl git powwer-profiles-daemon base-devel bat nano btop vim scrcpy fastfetch android-tools android-udev gvfs gvfs-mtp heimdall usbutils fish yt-dlp plasma networkmanager flatpak sddm openssh konsole dolphin --needed --noconfirm
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
	yay -S kde-material-you-colors --noconfirm
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
sudo systemctl start sshd
sudo systemctl enable sddm.service
sudo systemctl start NetworkManager
sudo systemctl enable power-profiles-daemon.service
sudo systemctl start power-profiles-daemon.service
chsh -s /usr/bin/fish
clear
PS3='Would You Like Firefox or Chrome?'
options=("Firefox" "Google Chrome")

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
PS3='Would You Like Localsend, Discord, or Both?'
options=("Localsend" "Discord" "Both" "Neither")

select opt in "${options[@]}"
do
	case $opt in
		"Localsend")
			yay -S localsend-bin --noconfirm
			break
			;;
		"Discord")
			sudo pacman -S discord --noconfirm
			break
			;;
		"Both")
			sudo pacman -S discord --noconfirm
			yay -S localsend-bin --noconfirm
			break
			;;
		"Neither")
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
