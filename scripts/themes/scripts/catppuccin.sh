#!/bin/bash

echo -e "
                                                  
 ▗▄▄▖ ▗▄▖▗▄▄▄▖▗▄▄▖ ▗▄▄▖ ▗▖ ▗▖ ▗▄▄▖ ▗▄▄▖▗▄▄▄▖▗▖  ▗▖
▐▌   ▐▌ ▐▌ █  ▐▌ ▐▌▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌     █  ▐▛▚▖▐▌
▐▌   ▐▛▀▜▌ █  ▐▛▀▘ ▐▛▀▘ ▐▌ ▐▌▐▌   ▐▌     █  ▐▌ ▝▜▌
▝▚▄▄▖▐▌ ▐▌ █  ▐▌   ▐▌   ▝▚▄▞▘▝▚▄▄▖▝▚▄▄▖▗▄█▄▖▐▌  ▐▌
                                                  
"

# alacritty
sed -i 's@themes/*.*@themes/catppuccin.toml"@g' /home/$USER/.dotfiles/.config/alacritty/alacritty.toml

# btop
sed -i 's@themes/*.*@themes/catppuccin.theme"@g' /home/$USER/.dotfiles/.config/btop/btop.conf

# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e1e2e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cdd6f4"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#cba6f7"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Catppuccin" &

# emacs
sed -i "/load-theme\ 'doom-*.*/s/^/;/g" /home/$USER/.dotfiles/.config/emacs/config.org
sed -i "/load-theme\ 'catppuccin*.*/s/^;//g" /home/$USER/.dotfiles/.config/emacs/config.org

# qtile
sed -i 's/themes.*\ import\ colors/themes.catppuccin\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/catppuccin.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py
qtile cmd-obj -o cmd -f reload_config

# rofi
sed -i 's@themes/*.*@themes/catppuccin"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# spicetify
spicetify config current_theme text
spicetify config color_scheme Catppuccin
spicetify apply

# Startpage
sed -i 's@assets/*.*@assets/style-catppuccin.css"\ rel="stylesheet" />@g' /ssd/Projekty/orgmode-startpage/index.html

# Xresources
sed -i 's@xresources/*.*@xresources/catppuccin"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources
