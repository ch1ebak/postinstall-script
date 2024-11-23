#!/bin/bash

echo -e "
                                                                     
▗▄▄▄▖▗▖ ▗▖▗▄▄▄▖▗▖  ▗▖▗▄▄▄▖     ▗▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▄▖▗▄▄▖▗▖ ▗▖▗▄▄▄▖▗▄▄▖ 
  █  ▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌       ▐▌   ▐▌ ▐▌  █    █ ▐▌   ▐▌ ▐▌▐▌   ▐▌ ▐▌
  █  ▐▛▀▜▌▐▛▀▀▘▐▌  ▐▌▐▛▀▀▘     ▝▀▚▖▐▌ ▐▌  █    █ ▐▌   ▐▛▀▜▌▐▛▀▀▘▐▛▀▚▖
  █  ▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▐▙▄▄▖    ▗▄▄▞▘▐▙█▟▌▗▄█▄▖  █ ▝▚▄▄▖▐▌ ▐▌▐▙▄▄▖▐▌ ▐▌
                                                                     
"

catppuccin () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/catppuccin.sh)
}

dracula () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/dracula.sh)
}

gruvbox () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/gruvbox.sh)
}

spacegray () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/spacegray.sh)
}

tokyonight () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/tokyonight.sh)
}

while true; do
    options=("Catppuccin" "Dracula" "Gruvbox" "Spacegray" "Tokyo Night" "Back")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) catppuccin; break ;;
            2) dracula; break ;;
            3) gruvbox; break ;;
            4) spacegray; break ;;
            5) tokyonight; break ;;
            6) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
