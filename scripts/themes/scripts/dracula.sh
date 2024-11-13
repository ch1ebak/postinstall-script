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

# emacs
sed -i "/load-theme\ 'catppuccin*.*/s/^/;/g" /home/$USER/.dotfiles/.config/emacs/config.org
sed -i "/load-theme\ 'doom-*.*/s/^;//g" /home/$USER/.dotfiles/.config/emacs/config.org
sed -i "s@load-theme\ 'doom-*.*@load-theme\ 'doom-dracula\ t)@g" /home/$USER/.dotfiles/.config/emacs/config.org

# qtile
sed -i 's/themes.*\ import\ colors/themes.dracula\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/dracula.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# rofi
sed -i 's@themes/*.*@themes/dracula"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme Dracula
spicetify apply

# Startpage
sed -i 's@assets/*.*@assets/style-dracula.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Wezterm
sed -i "s/color_scheme*.*/color_scheme\ =\ 'Dracula\ (Official)',/g" /home/$USER/.config/wezterm/wezterm.lua

# Xresources
sed -i 's@xresources/*.*@xresources/dracula"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
