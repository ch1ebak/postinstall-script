#!/bin/bash

echo -e "
                                                                              
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▖ ▗▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▖    ▗▄▖ ▗▖  ▗▖▗▄▄▄ 
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌ ▐▌ ▝▚▞▘ ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌  █
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▛▀▜▌  ▐▌  ▐▛▀▚▖▐▛▀▘ ▐▌   ▐▛▀▜▌▐▌ ▝▜▌▐▌  █
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖    ▐▌ ▐▌  ▐▌  ▐▌ ▐▌▐▌   ▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▐▙▄▄▀
                                                                              
"

LIST_OF_APPS="
hypridle
hyprland
hyprlock
hyprpaper
qt5-wayland
rofi-wayland
waybar"

rofi () {
    echo "Installing Rofi"
    paru -S rofi
}

paru -Rns $LIST_OF_APPS

while true; do
    options=("Yes" "No")

    echo "Would you like to install Rofi? "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) rofi; break ;;
            2) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
