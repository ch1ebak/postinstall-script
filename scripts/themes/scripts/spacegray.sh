#!/bin/bash

echo -e "
                                             
 ▗▄▄▖▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖▗▄▄▖  ▗▄▖▗▖  ▗▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▌ ▐▌▝▚▞▘ 
 ▝▀▚▖▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▀▀▘▐▌▝▜▌▐▛▀▚▖▐▛▀▜▌ ▐▌  
▗▄▄▞▘▐▌   ▐▌ ▐▌▝▚▄▄▖▐▙▄▄▖▝▚▄▞▘▐▌ ▐▌▐▌ ▐▌ ▐▌  
                                             
"

# ghostty
sed -i 's@themes/*.*@themes/SpaceGray@g' /home/$USER/.dotfiles/.config/ghostty/config

# neovim
sed -i "s@colorscheme\ *.*@colorscheme nordic'@g" /home/$USER/.dotfiles/.config/nvim/lua/core/colorscheme.lua
sed -i "s@theme\ =\ *.*@theme\ =\ 'auto',@g" /home/$USER/.dotfiles/.config/nvim/lua/plugins/lualine.lua

# rofi
sed -i 's@themes/*.*@themes/spacegray"@g' /home/$USER/.dotfiles/.config/rofi/config.rasi

# rmpc
sed -i 's/theme:\ Some("*.*"),/theme:\ Some("spacegray"),/g' /home/$USER/.dotfiles/.config/rmpc/config.ron

# Xresources
sed -i 's@xresources/*.*@xresources/spacegray"@g' /home/$USER/.dotfiles/.Xresources
xrdb -merge ~/.Xresources


# WMs
## qtile
sed -i 's/themes.*\ import\ colors/themes.spacegray\ import\ colors/g' /home/$USER/.dotfiles/.config/qtile/config.py
sed -i 's@wallpapers/*.*@wallpapers/spacegray.png",@g' /home/$USER/.dotfiles/.config/qtile/config.py

## hyprland
### hyprland
sed -i 's@col.active_border*.*@col.active_border\ =\ rgba(b04b57ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@col.inactive_border*.*@col.inactive_border\ =\ rgba(4c4f56ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf
sed -i 's@color*.*@color\ =\ rgba(363942ff)@g' /home/$USER/.dotfiles/.config/hypr/hyprland.conf

### hyprlock
sed -i 's@wallpapers/*.*@wallpapers/spacegray.png@g' /home/$USER/.dotfiles/.config/hypr/hyprlock.conf

### hyprpaper
sed -i 's@hypr/wallpapers*.*@hypr/wallpapers/spacegray.png@g' /home/$USER/.dotfiles/.config/hypr/hyprpaper.conf

### waybar
sed -i 's@themes/*.*@themes/spacegray.css";@g' /home/$USER/.dotfiles/.config/waybar/style.css

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
sed -i 's@background\ =\ "#*.*@background\ =\ "#20242d"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@foreground\ =\ "#*.*@foreground\ =\ "#b3b8c3"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
sed -i 's@frame_color\ =\ "#*.*@frame_color\ =\ "#b04b57"@g' /home/$USER/.dotfiles/.config/dunst/dunstrc
killall -e dunst & sleep 1; dunstify "Theme switched to Spacegray" &
