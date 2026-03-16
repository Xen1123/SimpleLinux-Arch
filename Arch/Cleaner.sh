#!/bin/bash
echo "Only Run This Script When Nothing Is Being Compiled!"
sleep 3
sudo rm -rf ~/.cache
sudo rm -rf /var/cache/pacman/pkg
sudo pacman -Sc
