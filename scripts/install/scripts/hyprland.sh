#!/usr/bin/env bash

echo -e "

▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▜▌  ▐▌  ▐▛▀▘ ▐▛▀▚▖▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌  ▐▌  ▐▌   ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀

"

LIST_OF_APPS="
cliphist
egl-wayland
grim
hyprcursor
hypridle
hyprland
hyprlock
hyprpaper
hyprpolkitagent
qt5-wayland
waybar
xdg-desktop-portal-hyprland"

yay -S --needed --noconfirm $LIST_OF_APPS
