#!/bin/bash

echo -e "
                              
▗▖   ▗▖ ▗▖▗▄▄▄▖▗▄▄▖ ▗▄▄▄▖ ▗▄▄▖
▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌  █  ▐▌   
▐▌   ▐▌ ▐▌  █  ▐▛▀▚▖  █   ▝▀▚▖
▐▙▄▄▖▝▚▄▞▘  █  ▐▌ ▐▌▗▄█▄▖▗▄▄▞▘
                              
"

LIST_OF_APPS="
lib32-nvidia-utils
lib32-vulkan-icd-loader
nvidia-open-dkms
nvidia-settings
nvidia-utils
lutris
vulkan-icd-loader
wine-staging"

LIST_OF_LIBRARIES="giflib lib32-giflib gnutls lib32-gnutls v4l-utils lib32-v4l-utils libpulse lib32-libpulse alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib sqlite lib32-sqlite libxcomposite lib32-libxcomposite ocl-icd lib32-ocl-icd libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader sdl2 lib32-sdl2"

paru -S --needed $LIST_OF_APPS
paru -S --needed --asdeps $LIST_OF_LIBRARIES
