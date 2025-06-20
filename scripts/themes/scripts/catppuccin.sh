#!/bin/bash

echo -e "
                                                  
 ▗▄▄▖ ▗▄▖▗▄▄▄▖▗▄▄▖ ▗▄▄▖ ▗▖ ▗▖ ▗▄▄▖ ▗▄▄▖▗▄▄▄▖▗▖  ▗▖
▐▌   ▐▌ ▐▌ █  ▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌     █  ▐▛▚▖▐▌
▐▌   ▐▛▀▜▌ █  ▐▛▀▘ ▐▛▀▘ ▐▌ ▐▌▐▌   ▐▌     █  ▐▌ ▝▜▌
▝▚▄▄▖▐▌ ▐▌ █  ▐▌   ▐▌   ▝▚▄▞▘▝▚▄▄▖▝▚▄▄▖▗▄█▄▖▐▌  ▐▌
                                                  
"

# ghostty
sed -i 's@themes/*.*@themes/catppuccin-mocha@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme catppuccin'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'catppuccin',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/catppuccin"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme Catppuccin
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/catppuccin"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# qtile
sed -i 's/themes.*\ import\ colors/themes.catppuccin\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/catppuccin.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e1e2e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cdd6f4"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#cba6f7"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Catppuccin" &
