#!/bin/bash

echo -e "
                        
 ▗▄▖▗▄▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌ █  ▐▌ ▐▌▐▌   ▐▌ ▐▌
▐▌ ▐▌ █  ▐▛▀▜▌▐▛▀▀▘▐▛▀▚▖
▝▚▄▞▘ █  ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌
                        
"

LIST_OF_APPS="
calibre
ferdium-bin
gimp
keepassxc
mpv
qbittorrent
spicetify-cli
spotify-launcher
yt-dlp
"

paru -S --needed $LIST_OF_APPS
