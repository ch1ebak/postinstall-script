#!/usr/bin/env bash

echo -e "
                                                                              
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▛▀▜▌  ▐▌  ▐▛▀▚▖▐▛▀▘ ▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖    ▐▌ ▐▌  ▐▌  ▐▌ ▐▌▐▌   ▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀
                                                                              
"

LIST_OF_APPS="
cliphist
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

paru -Rns $LIST_OF_APPS
