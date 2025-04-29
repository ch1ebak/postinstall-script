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

# Startpage
sed -i 's@assets/*.*@assets/style-grayscale.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# spicetify
spicetify config current_theme text
spicetify config color_scheme grayscale
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/grayscale"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# hyprland
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(7a7a7aff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(2a2a2aff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(191919ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

## hyprlock
sed -i 's@wallpapers/*.*@wallpapers/grayscale.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/grayscale.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf
nohup bash -c "killall -e hyprpaper & sleep 1; hyprpaper &"

## waybar
sed -i 's@themes/*.*@themes/grayscale.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css
nohup bash -c "killall waybar && waybar & disown"

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#080808"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cccccc"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#7a7a7a"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to grayscale" &
