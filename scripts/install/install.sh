#!/bin/bash

echo -e "
                                                                               
▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖       ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
  █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
  █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌       ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                               
"

install_core () {
  ./scripts/install/scripts/core.sh
}

dotfiles () {
  ./scripts/install/scripts/dotfiles.sh
}

install_other () {
  ./scripts/install/scripts/other.sh
}

install_qtile () {
  ./scripts/install/scripts/qtile.sh
}

install_hyprland () {
  ./scripts/install/scripts/hyprland.sh
}

install_neovim () {
  ./scripts/install/scripts/neovim.sh
}

install_emacs () {
  ./scripts/install/scripts/emacs.sh
}

install_gaming () {
  ./scripts/install/scripts/gaming.sh
}

install_vm () {
  ./scripts/install/scripts/vm.sh
}

while true; do
    options=("Install Core" "Clone Dotfiles" "Other Packages" "Install Qtile" "Install Hyprland" "Install Neovim" "Install Emacs" "Gaming" "Install Virt-Manager" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) install_core; break ;;
            2) dotfiles; break ;;
            3) install_other; break ;;
            4) install_qtile; break ;;
            5) install_hyprland; break ;;
            6) install_neovim; break ;;
            7) install_emacs; break ;;
            8) install_gaming; break ;;
            9) install_vm; break ;;
           10) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done

