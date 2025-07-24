#!/usr/bin/env bash

echo -e "
                                    
 ▗▄▄▖▗▖   ▗▄▄▄▖ ▗▄▖ ▗▖  ▗▖▗▖ ▗▖▗▄▄▖ 
▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▛▚▖▐▌▐▌ ▐▌▐▌ ▐▌
▐▌   ▐▌   ▐▛▀▀▘▐▛▀▜▌▐▌ ▝▜▌▐▌ ▐▌▐▛▀▘ 
▝▚▄▄▖▐▙▄▄▖▐▙▄▄▖▐▌ ▐▌▐▌  ▐▌▝▚▄▞▘▐▌   
                                    
"

cleanup_system() {
    printf "%b\n" "Performing system cleanup..."
    paru -Sc --noconfirm
    paru -Rns $(pacman -Qtdq) --noconfirm > /dev/null 2>&1
}

common_cleanup() {
    if [ -d /var/tmp ]; then
        find /var/tmp -type f -atime +5 -delete
    fi
    if [ -d /tmp ]; then
        find /tmp -type f -atime +5 -delete
    fi
    if [ -d /var/log ]; then
        find /var/log -type f -name "*.log" -exec truncate -s 0 {} \;
    fi
    journalctl --vacuum-time=3d
}

clean_data() {
    printf "%b" "Clean up old cache files and empty the trash? (y/N): "
    read -r clean_response
    case $clean_response in
        y|Y)
            printf "%b\n" "Cleaning up old cache files and emptying trash..."
            if [ -d "$HOME/.cache" ]; then
                find "$HOME/.cache/" -type f -atime +5 -delete
            fi
            if [ -d "$HOME/.local/share/Trash" ]; then
                find "$HOME/.local/share/Trash" -mindepth 1 -delete
            fi
            printf "%b\n" "Cache and trash cleanup completed."
            ;;
        *)
            printf "%b\n" "Skipping cache and trash cleanup."
            ;;
    esac
}

trash-empty
cleanup_system
common_cleanup
clean_data
