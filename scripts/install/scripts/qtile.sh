#!/usr/bin/env bash

echo -e "

▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖
▐▌ ▐▌  █    █  ▐▌   ▐▌   
▐▌ ▐▌  █    █  ▐▌   ▐▛▀▀▘
▐▙▄▟▙▖ █  ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖

"

LIST_OF_APPS="
picom
python-pip
python-psutil
qtile
qtile-extras-git
scrot
slock
xclip
xorg-server
xorg-xinit
xorg-xkill
xorg-xrandr
"

paru -S --needed --noconfirm $LIST_OF_APPS
