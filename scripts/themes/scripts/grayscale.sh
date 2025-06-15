#!/bin/bash

echo -e "
                                            
 ▗▄▄▖▗▄▄▖  ▗▄▖▗▖  ▗▖▗▄▄▖ ▗▄▄▖ ▗▄▖ ▗▖   ▗▄▄▄▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▝▚▞▘▐▌   ▐▌   ▐▌ ▐▌▐▌   ▐▌   
▐▌▝▜▌▐▛▀▚▖▐▛▀▜▌ ▐▌  ▝▀▚▖▐▌   ▐▛▀▜▌▐▌   ▐▛▀▀▘
▝▚▄▞▘▐▌ ▐▌▐▌ ▐▌ ▐▌ ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖
                                            
"

# ghostty
sed -i 's@themes/*.*@themes/zenwritten_dark@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme lackluster'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'lackluster',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/grayscale"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme grayscale
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/grayscale"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# qtile
sed -i 's/themes.*\ import\ colors/themes.grayscale\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/grayscale.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#080808"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cccccc"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#7a7a7a"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to grayscale" &
