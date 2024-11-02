#!/bin/bash

echo -e "
                                                                 
▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖       ▗▄▄▄▖▗▖  ▗▖ ▗▄▖  ▗▄▄▖ ▗▄▄▖
  █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌   ▐▌   
  █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌       ▐▛▀▀▘▐▌  ▐▌▐▛▀▜▌▐▌    ▝▀▚▖
▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▙▄▄▖▐▌  ▐▌▐▌ ▐▌▝▚▄▄▖▗▄▄▞▘
                                                                 
"

LIST_OF_APPS="
emacs-nativecomp
hunspell-pl
hunspell-en_us
"

paru -S --needed $LIST_OF_APPS
cd /home/$USER/.dotfiles/backups
mv /home/$USER/.dotfiles/backups/emacs /home/$USER/.dotfiles/.config/emacs
cd /home/$USER/.dotfiles
stow . --adopt
