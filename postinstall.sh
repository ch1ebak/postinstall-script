#!/bin/bash

echo -e "
                                                                                              
▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖        ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖
▐▌ ▐▌▐▌ ▐▌▐▌     █    █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █
▐▛▀▘ ▐▌ ▐▌ ▝▀▚▖  █    █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌        ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █
▐▌   ▝▚▄▞▘▗▄▄▞▘  █  ▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █
                                                                                              
I sure hope it works!
                                                                                              
"

chmod -R +x scripts/*
./scripts/core.sh
./scripts/dotfiles.sh

install_qtile () {
    echo "Setting up $opt"
    ./scripts/wm/qtile.sh
}

install_hyprland () {
    echo "Setting up $opt"
    ./scripts/wm/hyprland.sh
}

install_emacs () {
    echo "Setting up $opt"
    ./scripts/editors/emacs.sh
}

install_neovim () {
    echo "Setting up $opt"
    ./scripts/editors/neovim.sh
}

install_other () {
    echo "Setting up $opt"
    ./scripts/other/other.sh
}

install_gaming () {
    echo "Setting up $opt"
    ./scripts/other/gaming.sh
}

install_vm () {
    echo "Setting up $opt"
    ./scripts/other/vm.sh
}

while true; do
    options=("Install Qtile" "Install Hyprland" "Install Emacs" "Install Neovim" "Other Packages" "Gaming Setup" "VM Setup" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) install_qtile; break ;;
            2) install_hyprland; break ;;
            3) install_emacs; break ;;
            4) install_neovim; break ;;
            5) install_other; break ;;
            6) install_gaming; break ;;
            7) install_vm; break ;;
            8) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done

echo -e "
                                                                                              
 ▗▄▖ ▗▖   ▗▖       ▗▄▄▄  ▗▄▖ ▗▖  ▗▖▗▄▄▄▖
▐▌ ▐▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▛▚▖▐▌▐▌   
▐▛▀▜▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▌ ▝▜▌▐▛▀▀▘
▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▙▄▄▀▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖
                                                                                              
Enjoy!
                                                                                              
"
