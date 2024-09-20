#!/bin/sh
                                                                                              
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
alacritty
alsa-utils
bpytop
calibre
cantarell-fonts
capitaine-cursors
dunst
emacs-nativecomp
fastfetch
feh
ferdium-bin
fd
file-roller
firefox
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
lxappearance-gtk3
mpv
network-manager-applet
networkmanager
nvidia-open-dkms
nvidia-settings
nvtop
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
rofi
slock
spicetify-cli
spotify-launcher
steam
thunar
trash-cli
ttf-font-awesome
ttf-jetbrains-mono-nerd
wget
xorg-server
xorg-xrandr
xorg-xbacklight
xorg-xinit
xorg-xkill
yt-dlp"

sudo sed -Ei 's/^#(Color)$/\1\nILoveCandy/;s/^#(ParallelDownloads).*/\1 = 5/' /etc/pacman.conf
sudo pacman -Syu
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
paru -S $LIST_OF_APPS
cd ..
trash -v /home/$USER/paru

# DOTFILES
echo -e "
    ____   ____  ______ ______ ____ __     ______ _____
   / __ \ / __ \/_  __// ____//  _// /    / ____// ___/
  / / / // / / / / /  / /_    / / / /    / __/   \__ \
 / /_/ // /_/ / / /  / __/  _/ / / /___ / /___  ___/ /
/_____/ \____/ /_/  /_/    /___//_____//_____/ /____/
                                                                                        
"
                                                                                        
git clone https://github.com/ch1ebak/dotfiles
cd dotfiles
mv -f bashrc /home/$USER/.bashrc
mv -f Xresources /home/$USER/.Xresources
trash -v /home/$USER/.config/qtile
mv -f config/* /home/$USER/.config/
mv -f mozilla/backups /home/$USER/.mozilla/backups
cd ..
trash -v dotfiles
                                                                                        
# FINISHING TOUCHES
trash -v /home/$USER/.bash_profile
echo -e "xrdb ~/.Xresources" > .xinitrc
echo -e "exec qtile start" >> .xinitrc
                                                                                        
# cp assets/* /home/$USER/.local/share/
                                                                                        
echo -e "
                                                                                        
========================================================================================
                                                                                        
 ▗▄▖ ▗▖   ▗▖       ▗▄▄▄  ▗▄▖ ▗▖  ▗▖▗▄▄▄▖
▐▌ ▐▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▛▚▖▐▌▐▌
▐▛▀▜▌▐▌   ▐▌       ▐▌  █▐▌ ▐▌▐▌ ▝▜▌▐▛▀▀▘
▐▌ ▐▌▐▙▄▄▖▐▙▄▄▖    ▐▙▄▄▀▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖
                                                                                        
I sure hope it works!
                                                                                        
========================================================================================
                                                                                        
"
