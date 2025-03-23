#!/bin/bash

echo -e "
                                     
 ▗▄▄▖▗▄▄▖ ▗▖ ▗▖▗▖  ▗▖▗▄▄▖  ▗▄▖ ▗▖  ▗▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌  ▐▌▐▌ ▐▌▐▌ ▐▌ ▝▚▞▘ 
▐▌▝▜▌▐▛▀▚▖▐▌ ▐▌▐▌  ▐▌▐▛▀▚▖▐▌ ▐▌  ▐▌  
▝▚▄▞▘▐▌ ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▞▘▝▚▄▞▘▗▞▘▝▚▖
                                     
"

# btop
sed -i 's@themes/*.*@themes/gruvbox_dark.theme"@g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#282828"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#ebdbb2"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#98971a"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Gruvbox" &

# ghostty
sed -i 's@themes/*.*@themes/GruvboxDark@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme gruvbox'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'gruvbox',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/gruvbox"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Startpage
sed -i 's@assets/*.*@assets/style-gruvbox.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/gruvbox"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# hyprland
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(98971aff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(504945ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(3c3836ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/gruvbox.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf

## waybar
sed -i 's@themes/*.*@themes/gruvbox.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css
