#!/bin/bash

echo -e "
                                                  
▗▄▄▄▖▗▄▖ ▗▖ ▗▖▗▖  ▗▖▗▄▖ ▗▖  ▗▖▗▄▄▄▖ ▗▄▄▖▗▖ ▗▖▗▄▄▄▖
  █ ▐▌ ▐▌▐▌▗▞▘ ▝▚▞▘▐▌ ▐▌▐▛▚▖▐▌  █  ▐▌   ▐▌ ▐▌  █  
  █ ▐▌ ▐▌▐▛▚▖   ▐▌ ▐▌ ▐▌▐▌ ▝▜▌  █  ▐▌▝▜▌▐▛▀▜▌  █  
  █ ▝▚▄▞▘▐▌ ▐▌  ▐▌ ▝▚▄▞▘▐▌  ▐▌▗▄█▄▖▝▚▄▞▘▐▌ ▐▌  █  
                                                  
"

# ghostty
sed -i 's@themes/*.*@themes/tokyonight@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme tokyonight'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'tokyonight',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/tokyonight"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# rmpc
sed -i 's/theme:\ Some("*.*"),/theme:\ Some("tokyonight"),/g' /home/$USER/.dotfiles/.config/rmpc/config.ron

# Xresources
sed -i 's@xresources/*.*@xresources/tokyonight"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources


# WMs
## qtile
sed -i 's/themes.*\ import\ colors/themes.tokyonight\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/tokyonight.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py

## hyprland
### hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(f7768eff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(414868ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(24283bff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

### hyprlock
sed -i 's@wallpapers/*.*@wallpapers/tokyonight.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

### hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/tokyonight.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf

### waybar
sed -i 's@themes/*.*@themes/tokyonight.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css

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
sed -i 's@background\ =\ "#*.*@background\ =\ "#1a1b26"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#a9b1d6"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#f7768e"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Tokyo Night" &
