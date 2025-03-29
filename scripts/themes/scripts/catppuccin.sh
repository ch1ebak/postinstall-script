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

# Startpage
sed -i 's@assets/*.*@assets/style-catppuccin.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# spicetify
spicetify config current_theme text
spicetify config color_scheme Catppuccin
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/catppuccin"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# hyprland
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(cba6f7ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(45475aff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(313244ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

## hyprlock
sed -i 's@wallpapers/*.*@wallpapers/catppuccin.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/catppuccin.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf
nohup bash -c "killall -e hyprpaper & sleep 1; hyprpaper & disown"

## waybar
sed -i 's@themes/*.*@themes/catppuccin.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css
nohup bash -c "killall waybar && waybar & disown"

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e1e2e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cdd6f4"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#cba6f7"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Catppuccin" &
