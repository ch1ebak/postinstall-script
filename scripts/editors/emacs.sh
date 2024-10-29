#!/bin/bash

echo -e "
                          
▗▄▄▄▖▗▖  ▗▖ ▗▄▖  ▗▄▄▖ ▗▄▄▖
▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌   ▐▌   
▐▛▀▀▘▐▌  ▐▌▐▛▀▜▌▐▌    ▝▀▚▖
▐▙▄▄▖▐▌  ▐▌▐▌ ▐▌▝▚▄▄▖▗▄▄▞▘
                          
"

LIST_OF_APPS="
emacs-nativecomp
hunspell-pl
hunspell-en_us
"

paru -S --needed $LIST_OF_APPS
