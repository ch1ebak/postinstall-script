#!/bin/bash

echo -e "
                                                                                              
 ▗▄▄▖▗▖  ▗▖▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖    ▗▖  ▗▖ ▗▄▖ ▗▄▄▄▖▗▖  ▗▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖
▐▌    ▝▚▞▘▐▌     █  ▐▌   ▐▛▚▞▜▌    ▐▛▚▞▜▌▐▌ ▐▌  █  ▐▛▚▖▐▌  █  ▐▌   ▐▛▚▖▐▌▐▌ ▐▌▐▛▚▖▐▌▐▌   ▐▌   
 ▝▀▚▖  ▐▌  ▝▀▚▖  █  ▐▛▀▀▘▐▌  ▐▌    ▐▌  ▐▌▐▛▀▜▌  █  ▐▌ ▝▜▌  █  ▐▛▀▀▘▐▌ ▝▜▌▐▛▀▜▌▐▌ ▝▜▌▐▌   ▐▛▀▀▘
▗▄▄▞▘  ▐▌ ▗▄▄▞▘  █  ▐▙▄▄▖▐▌  ▐▌    ▐▌  ▐▌▐▌ ▐▌▗▄█▄▖▐▌  ▐▌  █  ▐▙▄▄▖▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▝▚▄▄▖▐▙▄▄▖
                                                                                              
"

update () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/system/scripts/update.sh)
}

cleanup () {
  bash <(curl -s https://raw.githubusercontent.com/ch1ebak/postinstall-script/refs/heads/main/scripts/system/scripts/cleanup.sh)
}

while true; do
    options=("Update System" "System Cleanup" "Back")

    echo "Choose an option: "
    select opt in "${options[@]}"; do
        case $REPLY in
            1) update; break ;;
            2) cleanup; break ;;
            3) break 2 ;;
            *) echo "Invalid option $REPLY" >&2
        esac
    done
done

