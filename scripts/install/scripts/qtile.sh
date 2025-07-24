#!/usr/bin/env bash

echo -e "

▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖
▐▌ ▐▌  █    █  ▐▌   ▐▌   
▐▌ ▐▌  █    █  ▐▌   ▐▛▀▀▘
▐▙▄▟▙▖ █  ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖

"

LIST_OF_APPS="
picom-git
python-pip
python-psutil
qtile
qtile-extras
rofi
scrot
slock
xclip
xorg-server
xorg-xbacklight
xorg-xinit
xorg-xkill
xorg-xrandr
"

paru -S --needed --noconfirm $LIST_OF_APPS
