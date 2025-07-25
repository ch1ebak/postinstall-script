#!/usr/bin/env bash

echo -e "
                                                                                              
▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖        ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖
▐▌ ▐▌▐▌ ▐▌▐▌     █    █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █
▐▛▀▘ ▐▌ ▐▌ ▝▀▚▖  █    █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌        ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █
▐▌   ▝▚▄▞▘▗▄▄▞▘  █  ▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █
                                                                                              
I sure hope it works!
                                                                                              
"

install () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/install/install.sh)
}

remove () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/remove/remove.sh)
}

system () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/system/system.sh)
}

while true; do
    options=("Install Packages" "Remove Packages" "System Maintenance" "Quit")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) install; break ;;
            2) remove; break ;;
            3) system; break ;;
            4) break 2 ;;
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
