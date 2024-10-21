#!/bin/sh

LIST_OF_APPS="
egl-wayland
hypridle
hyprland
hyprlock
hyprpaper
qt5-wayland
rofi-wayland
waybar"

paru -S $LIST_OF_APPS
cd /home/$USER/.dotfiles/backup
mv hypr /home/$USER/.dotfiles/.config/
mv waybar /home/$USER/.dotfiles/.config/
cd /home/$USER/.dotfiles
stow . --adopt
