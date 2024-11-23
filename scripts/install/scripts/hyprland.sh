#!/bin/bash

echo -e "

▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▜▌  ▐▌  ▐▛▀▘ ▐▛▀▚▖▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌  ▐▌  ▐▌   ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀

"

LIST_OF_APPS="
egl-wayland
hypridle
hyprland
hyprlock
hyprpaper
qt5-wayland
rofi-wayland
waybar"

paru -S --needed $LIST_OF_APPS
cd /home/$USER/.dotfiles/backups
mv /home/$USER/.dotfiles/backups/hypr /home/$USER/.dotfiles/.config/hypr
mv /home/$USER/.dotfiles/backups/waybar /home/$USER/.dotfiles/.config/waybar
cd /home/$USER/.dotfiles
stow . --adopt
