#!/bin/bash

echo -e "
                                       
▗▄▄▄  ▗▄▖▗▄▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖   ▗▄▄▄▖ ▗▄▄▖
▐▌  █▐▌ ▐▌ █  ▐▌     █  ▐▌   ▐▌   ▐▌   
▐▌  █▐▌ ▐▌ █  ▐▛▀▀▘  █  ▐▌   ▐▛▀▀▘ ▝▀▚▖
▐▙▄▄▀▝▚▄▞▘ █  ▐▌   ▗▄█▄▖▐▙▄▄▖▐▙▄▄▖▗▄▄▞▘
                                       
"

cd /home/$USER/
trash .config/qtile .bashrc .Xresources
git clone https://github.com/ch1ebak/dotfiles
mv dotfiles .dotfiles
cd .dotfiles
stow . --adopt
cd /home/$USER/
trash -v /home/$USER/.bash_profile
chmod +x /home/$USER/.dotfiles/.config/rofi/modules/rofi-power-menu
