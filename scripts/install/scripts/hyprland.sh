#!/bin/bash

echo -e "

▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▜▌  ▐▌  ▐▛▀▘ ▐▛▀▚▖▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌  ▐▌  ▐▌   ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀

"

LIST_OF_APPS="
cliphist
egl-wayland
hyprcursor
hypridle
hyprland
hyprlock
hyprpaper
hyprpolkitagent
hyprshot
qt5-wayland
rofi-wayland
waybar
xdg-desktop-portal-hyprland"

paru -S --needed $LIST_OF_APPS
