#!/bin/bash

echo -e "
                                                   
▗▄▄▄▖▗▖  ▗▖▗▄▄▄▖▗▄▄▖ ▗▄▄▄▖ ▗▄▖ ▗▄▄▖ ▗▄▄▄▖ ▗▄▄▖▗▄▄▄▖
▐▌   ▐▌  ▐▌▐▌   ▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌     █  
▐▛▀▀▘▐▌  ▐▌▐▛▀▀▘▐▛▀▚▖▐▛▀▀▘▐▌ ▐▌▐▛▀▚▖▐▛▀▀▘ ▝▀▚▖  █  
▐▙▄▄▖ ▝▚▞▘ ▐▙▄▄▖▐▌ ▐▌▐▌   ▝▚▄▞▘▐▌ ▐▌▐▙▄▄▖▗▄▄▞▘  █  
                                                   
"

# ghostty
sed -i 's@themes/*.*@themes/Everforest\ Dark\ -\ Hard@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme everforest'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'everforest',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/everforest"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme everforest
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/everforest"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# qtile
sed -i 's/themes.*\ import\ colors/themes.everforest\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/everforest.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e2326"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#d3c6aa"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#4f5b58"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to everforest" &
