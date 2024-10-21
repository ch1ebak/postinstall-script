#!/bin/bash

echo -e "
                                                                                              
========================================================================================
                                                                                              
▗▄▄▖  ▗▄▖  ▗▄▄▖▗▄▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▖ ▗▖   ▗▖        ▗▄▄▖ ▗▄▄▖▗▄▄▖ ▗▄▄▄▖▗▄▄▖▗▄▄▄▖
▐▌ ▐▌▐▌ ▐▌▐▌     █    █  ▐▛▚▖▐▌▐▌     █ ▐▌ ▐▌▐▌   ▐▌       ▐▌   ▐▌   ▐▌ ▐▌  █  ▐▌ ▐▌ █
▐▛▀▘ ▐▌ ▐▌ ▝▀▚▖  █    █  ▐▌ ▝▜▌ ▝▀▚▖  █ ▐▛▀▜▌▐▌   ▐▌        ▝▀▚▖▐▌   ▐▛▀▚▖  █  ▐▛▀▘  █
▐▌   ▝▚▄▞▘▗▄▄▞▘  █  ▗▄█▄▖▐▌  ▐▌▗▄▄▞▘  █ ▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▗▄▄▞▘▝▚▄▄▖▐▌ ▐▌▗▄█▄▖▐▌    █
                                                                                              
I sure hope it works!
                                                                                              
========================================================================================
                                                                                              
"

# INSTALL APPS
echo -e "
    ___    ____  ____     _____   ________________    __    __
   /   |  / __ \/ __ \   /  _/ | / / ___/_  __/   |  / /   / /
  / /| | / /_/ / /_/ /   / //  |/ /\__ \ / / / /| | / /   / /
 / ___ |/ ____/ ____/  _/ // /|  /___/ // / / ___ |/ /___/ /___
/_/  |_/_/   /_/      /___/_/ |_//____//_/ /_/  |_/_____/_____/
                                                                                              
"

LIST_OF_APPS="
acpilight
alacritty
alsa-utils
btop
brightnessctl
calibre
cantarell-fonts
capitaine-cursors
dunst
emacs-nativecomp
fastfetch
fd
ferdium-bin
file-roller
fzf
gimp
git
gvfs
gvfs-mtp
hunspell-en_us
hunspell-pl
keepassxc
less
linux-headers
mpv
network-manager-applet
networkmanager
nsxiv
nvidia-open-dkms
nvidia-settings
nvtop
nwg-look
pandoc-bin
papirus-icon-theme
picom-git
proton-ge-custom-bin
protontricks
python-pip
python-psutil
qbittorrent
qtile
ripgrep
slock
spicetify-cli
spotify-launcher
steam
stow
thunar
trash-cli
ttf-font-awesome
ttf-jetbrains-mono-nerd
wget
xorg-server
xorg-xrandr
xorg-xinit
xorg-xkill
yt-dlp
zen-browser-bin
zoxide"
                                                                                              
sudo sed -Ei 's/^#(Color)$/\1\nILoveCandy/;s/^#(ParallelDownloads).*/\1 = 5/' /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S --needed base-devel
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S --needed $LIST_OF_APPS
cd ..
trash -v paru

# DOTFILES
echo -e "
    ____   ____  ______ ______ ____ __     ______ _____
   / __ \ / __ \/_  __// ____//  _// /    / ____// ___/
  / / / // / / / / /  / /_    / / / /    / __/   \__ \
 / /_/ // /_/ / / /  / __/  _/ / / /___ / /___  ___/ /
/_____/ \____/ /_/  /_/    /___//_____//_____/ /____/
                                                                                        
"

cd ~
git clone https://github.com/ch1ebak/dotfiles
mv dotfiles .dotfiles
cd .dotfiles
mv config .config
stow .
cd ..

# FINISHING TOUCHES
trash -v /home/$USER/.bash_profile
echo -e "xrdb ~/.Xresources" > .xinitrc
echo -e "exec qtile start" >> .xinitrc

echo -e "
                                                                                        
========================================================================================
                                                                                        
 ▗▄▖ ▗▖   ▗▖       ▗▄▄▄  ▗▄▖ ▗▖  ▗▖▗▄▄▄▖
▐▌ ▐▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▛▚▖▐▌▐▌
▐▛▀▜▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▌ ▝▜▌▐▛▀▀▘
▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▙▄▄▀▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖
                                                                                        
So... did it work?
                                                                                        
========================================================================================
                                                                                        
"
