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
sed -i 's@themes/*.*@themes/Dracula@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme dracula'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'dracula',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/dracula"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Startpage
sed -i 's@assets/*.*@assets/style-dracula.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/dracula"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# hyprland
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(5AF78Eff)@g' hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(4D4D4Dff)@g' hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(3D3F4Aff)@g' hyprland.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/dracula.png@g' hyprpaper.conf
killall -e hyprpaper & sleep 1; hyprpaper &

## waybar
sed -i 's@themes/*.*@themes/dracula.css";@g' /home/$USER/.dotfiles/config/waybar/style.css
killall waybar && waybar & disown
