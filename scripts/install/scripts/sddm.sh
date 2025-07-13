#!/bin/bash

echo -e "
                     
 ▗▄▄▖▗▄▄▄ ▗▄▄▄ ▗▖  ▗▖
▐▌   ▐▌  █▐▌  █▐▛▚▞▜▌
 ▝▀▚▖▐▌  █▐▌  █▐▌  ▐▌
▗▄▄▞▘▐▙▄▄▀▐▙▄▄▀▐▌  ▐▌
                     
"

paru -S --needed --noconfirm sddm qt6-svg
systemctl enable sddm
sudo git clone https://github.com/keyitdev/sddm-astronaut-theme.git /usr/share/sddm/themes/sddm-astronaut-theme
sudo cp /usr/share/sddm/themes/sddm-astronaut-theme/Fonts/* /usr/share/fonts/
echo "[Theme]
Current=sddm-astronaut-theme" | sudo tee /etc/sddm.conf
