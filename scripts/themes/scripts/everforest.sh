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
# sed -i 's/themes.*\ import\ colors/themes.everforest\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
# sed -i 's@wallpapers/*.*@wallpapers/everforest.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
# qtile cmd-obj -o cmd -f reload_config

# hyprland
## hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(4f5b58ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(272e33ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(1e2326ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

## hyprlock
sed -i 's@wallpapers/*.*@wallpapers/everforest.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

## hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/everforest.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf
nohup bash -c "killall -e hyprpaper & sleep 1; hyprpaper &"

## waybar
sed -i 's@themes/*.*@themes/everforest.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css
nohup bash -c "killall waybar && waybar & disown"


# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e2326"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#d3c6aa"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#4f5b58"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to everforest" &
