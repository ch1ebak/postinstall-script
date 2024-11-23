#!/bin/bash

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
rofi
slock
xclip
xorg-server
xorg-xinit
xorg-xkill
xorg-xrandr
"

paru -S --needed $LIST_OF_APPS
