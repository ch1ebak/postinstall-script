#!/bin/bash

echo -e "
                                                                            
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                            
"

remove_qtile () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/scripts/qtile.sh)
}

remove_hyprland () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/scripts/hyprland.sh)
}

remove_neovim () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/scripts/neovim.sh)
}

remove_emacs () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/scripts/emacs.sh)
}

remove_vm () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/scripts/vm.sh)
}

while true; do
    options=("Remove Qtile" "Remove Hyprland" "Remove Neovim" "Remove Emacs" "Remove Virt-Manager" "Back")

    echo "Choose and option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) remove_qtile; break ;;
            2) remove_hyprland; break ;;
            3) remove_neovim; break ;;
            4) remove_emacs; break ;;
            5) remove_vm; break ;;
            6) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
