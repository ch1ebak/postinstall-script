#!/bin/bash

echo -e "
                                                                                              
========================================================================================
                                                                                              
▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖        ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖
▐▌ ▐▌▐▌ ▐▌▐▌     █    █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █
▐▛▀▘ ▐▌ ▐▌ ▝▀▚▖  █    █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌        ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █
▐▌   ▝▚▄▞▘▗▄▄▞▘  █  ▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █
                                                                                              
I sure hope it works!
                                                                                              
========================================================================================
                                                                                              
"

chmod -R +x scripts/*
./scripts/core.sh
./scripts/dotfiles.sh

PS3='Choose a script to execute: '
options=("Qtile" "Hyprland" "Emacs" "Neovim" "Gaming" "QEMU" "Other packages" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Qtile")
            echo "Setting up $opt"
            ./scripts/wm/qtile.sh
            ;;
        "Hyprland")
            echo "Setting up $opt"
            ./scripts/wm/hyprland.sh
            ;;
        "Emacs")
            echo "Setting up $opt"
            ./scripts/editors/emacs.sh
            ;;
        "Neovim")
            echo "Setting up $opt"
            ./scripts/editors/neovim.sh
            ;;
        "Gaming")
            echo "Setting up $opt"
            ./scripts/other/gaming.sh
            ;;
        "QEMU")
            echo "Setting up $opt"
            ./scripts/other/vm.sh
            ;;
        "Other packages")
            echo "Setting up $opt"
            ./scripts/other/other.sh
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
