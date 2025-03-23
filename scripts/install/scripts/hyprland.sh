#!/bin/bash

echo -e "

▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▜▌  ▐▌  ▐▛▀▘ ▐▛▀▚▖▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌  ▐▌  ▐▌   ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀

"

LIST_OF_APPS="
acpilight
brightnessctl
cliphist
egl-wayland
hyprcursor
hypridle
hyprland
hyprlock
hyprpaper
hyprpolkitagent
qt5-wayland
rofi-wayland
waybar
xdg-desktop-portal-hyprland"

paru -S --needed $LIST_OF_APPS
