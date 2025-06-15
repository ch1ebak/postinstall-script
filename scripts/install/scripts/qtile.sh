#!/bin/bash

echo -e "

▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖
▐▌ ▐▌  █    █  ▐▌   ▐▌   
▐▌ ▐▌  █    █  ▐▌   ▐▛▀▀▘
▐▙▄▟▙▖ █  ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖

"

LIST_OF_APPS="
lxappearance-gtk3
picom-git
python-pip
python-psutil
qtile
rofi
slock
xclip
xorg-server
xorg-xbacklight
xorg-xinit
xorg-xkill
xorg-xrandr
"

paru -S --needed $LIST_OF_APPS
