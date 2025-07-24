#!/usr/bin/env bash

echo -e "
                                                                              
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▛▀▜▌  ▐▌  ▐▛▀▚▖▐▛▀▘ ▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖    ▐▌ ▐▌  ▐▌  ▐▌ ▐▌▐▌   ▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀
                                                                              
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
rofi-wayland
waybar
xdg-desktop-portal-hyprland"

paru -Rns $LIST_OF_APPS
paru -S rofi
