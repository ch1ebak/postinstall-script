#!/usr/bin/env bash

echo -e "

▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖ ▗▄▄▖ ▗▄▖ ▗▖ ▗▖ ▗▄▄▖
▐▛▚▞▜▌▐▌ ▐▌▐▛▚▖▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌   
▐▌  ▐▌▐▛▀▜▌▐▌ ▝▜▌▐▌▝▜▌▐▌ ▐▌▐▌ ▐▌▐▌   
▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▝▚▄▞▘▝▚▄▞▘▐▙█▟▌▝▚▄▄▖

"

LIST_OF_APPS="
cliphist
egl-wayland
grim
mangowc-git
swaybg
hypridle
hyprlock
qt5-wayland
waybar
xdg-desktop-portal
xdg-desktop-portal-wlr
xdg-desktop-portal-gtk
xfce-polkit"

yay -S --needed --noconfirm $LIST_OF_APPS
