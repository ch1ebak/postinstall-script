#!/usr/bin/env bash

echo -e "
                                                                
 ▗▄▄▖ ▗▄▖ ▗▄▄▖ ▗▄▄▄▖    ▗▄▄▖  ▗▄▖  ▗▄▄▖▗▖ ▗▖ ▗▄▖  ▗▄▄▖▗▄▄▄▖ ▗▄▄▖
▐▌   ▐▌ ▐▌▐▌ ▐▌▐▌       ▐▌ ▐▌▐▌ ▐▌▐▌   ▐▌▗▞▘▐▌ ▐▌▐▌   ▐▌   ▐▌   
▐▌   ▐▌ ▐▌▐▛▀▚▖▐▛▀▀▘    ▐▛▀▘ ▐▛▀▜▌▐▌   ▐▛▚▖ ▐▛▀▜▌▐▌▝▜▌▐▛▀▀▘ ▝▀▚▖
▝▚▄▄▖▝▚▄▞▘▐▌ ▐▌▐▙▄▄▖    ▐▌   ▐▌ ▐▌▝▚▄▄▖▐▌ ▐▌▐▌ ▐▌▝▚▄▞▘▐▙▄▄▖▗▄▄▞▘
                                                                
"

LIST_OF_APPS="
acpilight
brightnessctl
btop
calibre
cantarell-fonts
capitaine-cursors
dunst
easyeffects
emacs
fd
feh
ferdium-bin
file-roller
fzf
ghostty
github-cli
gvfs
gvfs-mtp
imagemagick
iwd
linux-headers
lsp-plugins
mpd
mpv
network-manager-applet
networkmanager
nordic-darker-theme
nvidia-open-dkms
nvidia-settings
nwg-look
papirus-icon-theme
python-yams
qbittorrent
ripgrep
rmpc
rofi
smartmontools
stow
syncthing
thunar
thunar-archive-plugin
trash-cli
ttf-ancient-fonts
ttf-atkinson-hyperlegible
ttf-jetbrains-mono-nerd
wget
zen-browser-bin
yt-dlp
openssh
wget
wireless_tools
wpa_supplicant"
                                                                                              
sudo sed -Ei 's/^#(Color)$/\1\nILoveCandy/;s/^#(ParallelDownloads).*/\1 = 5/' /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S --needed --noconfirm base-devel git
cd /home/$USER/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S --needed --noconfirm $LIST_OF_APPS
cd /home/$USER/
trash -v paru
