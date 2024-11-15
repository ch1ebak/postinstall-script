#!/bin/bash

echo -e "
                          
 ▗▄▄▖▗▄▄▄▖▗▄▄▄▖ ▗▄▖ ▗▖  ▗▖
▐▌     █  ▐▌   ▐▌ ▐▌▐▛▚▞▜▌
 ▝▀▚▖  █  ▐▛▀▀▘▐▛▀▜▌▐▌  ▐▌
▗▄▄▞▘  █  ▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌
                          
"

LIST_OF_APPS="
nvidia-open-dkms
nvidia-settings
nvidia-utils
proton-ge-custom-bin
protontricks
steam"

paru -S --needed $LIST_OF_APPS
