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

everforest () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/everforest.sh)
}

grayscale () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/grayscale.sh)
}

gruvbox () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/gruvbox.sh)
}

kanagawa () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/kanagawa.sh)
}

spacegray () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/spacegray.sh)
}

tokyonight () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/themes/scripts/tokyonight.sh)
}

while true; do
    options=("Catppuccin" "Dracula" "Everforest" "Grayscale" "Gruvbox" "Kanagawa" "Spacegray" "Tokyo Night" "Back")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) catppuccin; break ;;
            2) dracula; break ;;
            3) everforest; break ;;
            4) grayscale; break ;;
            5) gruvbox; break ;;
            6) kanagawa; break ;;
            7) spacegray; break ;;
            8) tokyonight; break ;;
            9) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done
