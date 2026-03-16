#!/bin/bash
echo "This script installs fish shell and some other fun programs, along with setting them up!"
sudo pacman -S fish figlet fastfetch bat asciiquarium
mkdir -p ~/.config/fish
echo 'set fish_greeting""' > ~/.config/fish/config.fish
echo "fastfetch --logo venom" >> ~/.config/fish/config.fish
echo "alias pacman 'sudo pacman'" >> ~/.config/fish/config.fish
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
chsh -s /usr/bin/fish
echo "Changing your shell typically requires a restart for it to fully take affect, would you like to reboot?"
PS3='Please Select Your Choice: '
options=("Restart" "Close The Script")
select opt in "$(options[@]}"
do
case $opt in
"Restart")
sudo reboot now
;;
"Close The Script")
echo "Okay, all finished then, just type "fish" to enter fish shell, and "exit" or just put CTRL+D to go back to bash!"
exit
;;
*)
echo "Invalid Option $REPLY"
;;
esac
done
