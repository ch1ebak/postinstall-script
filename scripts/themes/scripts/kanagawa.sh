#!/bin/bash

echo -e "
                                         
▗▖ ▗▖ ▗▄▖ ▗▖  ▗▖ ▗▄▖  ▗▄▄▖ ▗▄▖ ▗▖ ▗▖ ▗▄▖ 
▐▌▗▞▘▐▌ ▐▌▐▛▚▖▐▌▐▌ ▐▌▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌
▐▛▚▖ ▐▛▀▜▌▐▌ ▝▜▌▐▛▀▜▌▐▌▝▜▌▐▛▀▜▌▐▌ ▐▌▐▛▀▜▌
▐▌ ▐▌▐▌ ▐▌▐▌  ▐▌▐▌ ▐▌▝▚▄▞▘▐▌ ▐▌▐▙█▟▌▐▌ ▐▌
                                         
"

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1f1f28"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#dcd7ba"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#2d4f67"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Kanagawa" &

# ghostty
sed -i 's@themes/*.*@themes/Kanagawa\ Wave@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme kanagawa-wave'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'auto',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/kanagawa"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# Startpage
sed -i 's@assets/*.*@assets/style-kanagawa.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# spicetify
spicetify config current_theme text
spicetify config color_scheme Kanagawa
spicetify apply

# Xresources
sed -i 's@xresources/*.*@xresources/kanagawa"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources

# hypr
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(2d4f67ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(35353Dff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(1f1f28ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/kanagawa.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf
nohup bash -c "killall -e hyprpaper & sleep 1; hyprpaper &"

## waybar
sed -i 's@themes/*.*@themes/kanagawa.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css
nohup bash -c "killall waybar && waybar & disown"
