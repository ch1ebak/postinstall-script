#!/bin/bash

echo -e "
                                                                    
 ▗▄▖▗▄▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▖     ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
▐▌ ▐▌ █  ▐▌ ▐▌▐▌   ▐▌ ▐▌    ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
▐▌ ▐▌ █  ▐▛▀▜▌▐▛▀▀▘▐▛▀▚▖    ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▝▚▄▞▘ █  ▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                    
"

LIST_OF_APPS="
calibre
ferdium-bin
gimp
hunspell-pl
hunspell-en_us
keepassxc
lazygit
mpv
qbittorrent
spicetify-cli
spotify-launcher
yazi
yt-dlp
"

paru -S --needed $LIST_OF_APPS
