#!/bin/bash

echo -e "
                                   
▗▄▄▄ ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖▗▖    ▗▄▖ 
▐▌  █▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌   ▐▌ ▐▌
▐▌  █▐▛▀▚▖▐▛▀▜▌▐▌   ▐▌ ▐▌▐▌   ▐▛▀▜▌
▐▙▄▄▀▐▌ ▐▌▐▌ ▐▌▝▚▄▄▖▝▚▄▞▘▐▙▄▄▖▐▌ ▐▌
                                   
"

# btop
sed -i 's@themes/*.*@themes/dracula.theme"@g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#282A36"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#E6E6E6"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#5AF78E"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Dracula" &

# ghostty
sed -i 's@themes/*.*@themes/dracula@g' /home/$USER/.dotfiles/.config/ghosty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme dracula'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'dracula',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# qtile
sed -i 's/themes.*\ import\ colors/themes.dracula\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/dracula.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# rofi
sed -i 's@themes/*.*@themes/dracula"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Startpage
sed -i 's@assets/*.*@assets/style-dracula.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/dracula"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
