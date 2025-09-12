#!/usr/bin/env bash

echo -e "
                                                             
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌ ▐▌  █    █  ▐▌   ▐▌   
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▌ ▐▌  █    █  ▐▌   ▐▛▀▀▘
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖    ▐▙▄▟▙▖ █  ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖
                                                             
"

LIST_OF_APPS="
picom
python-pip
python-psutil
qtile
qtile-extras
scrot
slock
xclip
xorg-server
xorg-xinit
xorg-xkill
xorg-xrandr
"

paru -Rns $LIST_OF_APPS
