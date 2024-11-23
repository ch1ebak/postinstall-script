#!/bin/bash

echo -e "
                                                                               
▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖       ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
  █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
  █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌       ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                               
"

install_core () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/core.sh)
}

dotfiles () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/dotfiles.sh)
}

sddm () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/sddm.sh)
}

install_qtile () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/qtile.sh)
}

install_hyprland () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/hyprland.sh)
}

install_neovim () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/neovim.sh)
}

install_emacs () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/emacs.sh)
}

install_steam () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/steam.sh)
}

install_lutris () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/lutris.sh)
}

install_vm () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/scripts/vm.sh)
}

while true; do
    options=("Install Core" "Clone Dotfiles" "SDDM" "Install Qtile" "Install Hyprland" "Install Neovim" "Install Emacs" "Install Steam" "Install Lutris" "Install Virt-Manager" "Back")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) install_core; break ;;
            2) dotfiles; break ;;
            3) sddm; break ;;
            4) install_qtile; break ;;
            5) install_hyprland; break ;;
            6) install_neovim; break ;;
            7) install_emacs; break ;;
            8) install_steam; break ;;
            9) install_lutris; break ;;
           10) install_vm; break ;;
           11) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done

