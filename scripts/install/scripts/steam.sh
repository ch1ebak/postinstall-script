#!/usr/bin/env bash

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

paru -S --needed --noconfirm $LIST_OF_APPS
