#!/bin/bash

echo -e "
                                             
 ▗▄▄▖▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖▗▄▄▖  ▗▄▖▗▖  ▗▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▌ ▐▌▝▚▞▘ 
 ▝▀▚▖▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▀▀▘▐▌▝▜▌▐▛▀▚▖▐▛▀▜▌ ▐▌  
▗▄▄▞▘▐▌   ▐▌ ▐▌▝▚▄▄▖▐▙▄▄▖▝▚▄▞▘▐▌ ▐▌▐▌ ▐▌ ▐▌  
                                             
"

# ghostty
sed -i 's@themes/*.*@themes/SpaceGray@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme nordic'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'auto',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/spacegray"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme Spacegray
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/spacegray"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# qtile
sed -i 's/themes.*\ import\ colors/themes.spacegray\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/spacegray.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#20242d"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#b3b8c3"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#b04b57"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Spacegray" &
