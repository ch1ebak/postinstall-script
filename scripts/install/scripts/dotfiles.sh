#!/usr/bin/env bash

echo -e "
                                       
▗▄▄▄  ▗▄▖▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖ ▗▄▄▖
▐▌  █▐▌ ▐▌ █  ▐▌     █  ▐▌   ▐▌   ▐▌   
▐▌  █▐▌ ▐▌ █  ▐▛▀▀▘  █  ▐▌   ▐▛▀▀▘ ▝▀▚▖
▐▙▄▄▀▝▚▄▞▘ █  ▐▌   ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖▗▄▄▞▘
                                       
"

LIST_OF_APPS="
git
trash-cli
stow
"

yay -S --needed --noconfirm $LIST_OF_APPS
cd /home/$USER/
trash .config/qtile .bashrc .Xresources .config/hypr .config/waybar
git clone https://github.com/ch1ebak/dotfiles
mv dotfiles .dotfiles
cd .dotfiles
stow . --adopt
cd /home/$USER/
trash -v /home/$USER/.bash_profile
chmod +x /home/$USER/.dotfiles/.config/rofi/modules/rofi-power-menu
