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

# rmpc
sed -i 's/theme:\ Some("*.*"),/theme:\ Some("catppuccin"),/g' config.ron

# Xresources
sed -i 's@xresources/*.*@xresources/catppuccin"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources


# WMs
## qtile
sed -i 's/themes.*\ import\ colors/themes.catppuccin\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/catppuccin.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py

## hyprland
### hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(cba6f7ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(45475aff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(313244ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

### hyprlock
sed -i 's@wallpapers/*.*@wallpapers/catppuccin.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

### hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/catppuccin.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf

### waybar
sed -i 's@themes/*.*@themes/catppuccin.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css

## reset
if [ $XDG_SESSION_TYPE = 'wayland' ]; then
  nohup bash -c "killall -e hyprpaper & sleep 1; hyprpaper &"
  nohup bash -c "killall waybar && waybar & disown"
elif [ $XDG_SESSION_TYPE = 'x11' ]; then
  qtile cmd-obj -o cmd -f reload_config
else
  echo "What?"
fi


# dunst
sed -i 's@background\ =\ "#*.*@background\ =\ "#1e1e2e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#cdd6f4"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#cba6f7"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Catppuccin" &
