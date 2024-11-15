#!/bin/bash

echo -e "
                                                                
 ▗▄▄▖ ▗▄▖ ▗▄▄▖ ▗▄▄▄▖    ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌       ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
▐▌   ▐▌ ▐▌▐▛▀▚▖▐▛▀▀▘    ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▝▚▄▄▖▝▚▄▞▘▐▌ ▐▌▐▙▄▄▖    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                
"

LIST_OF_APPS="
acpilight
alsa-utils
brightnessctl
btop
calibre
cantarell-fonts
capitaine-cursors
duf
dunst
fastfetch
ferdium-bin
feh
file-roller
fzf
git
github-cli
gimp
gvfs
gvfs-mtp
keepassxc
languagetool
lazygit
linux-headers
mpv
network-manager-applet
networkmanager
nordic-darker-theme
nvidia-open-dkms
nvidia-settings
nvtop
nwg-look
papirus-icon-theme
qbittorrent
ripgrep
sddm
spicetify-cli
spotify-launcher
stow
thunar
trash-cli
ttf-ancient-fonts
ttf-atkinson-hyperlegible
ttf-jetbrains-mono-nerd
wezterm
wget
zen-browser-bin
xdg-utils
yazi
yt-dlp
zoxide"
                                                                                              
sudo sed -Ei 's/^#(Color)$/\1\nILoveCandy/;s/^#(ParallelDownloads).*/\1 = 5/' /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S --needed base-devel
cd /home/$USER/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S --needed $LIST_OF_APPS
cd /home/$USER/
trash -v paru
