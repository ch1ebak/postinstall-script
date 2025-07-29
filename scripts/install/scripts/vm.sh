#!/usr/bin/env bash

echo -e "

▗▖  ▗▖▗▄▄▄▖▗▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌  ▐▌  █  ▐▌ ▐▌ █  ▐▛▚▞▜▌▐▌ ▐▌▐▛▚▖▐▌▐▌   ▐▌   ▐▌ ▐▌
▐▌  ▐▌  █  ▐▛▀▚▖ █  ▐▌  ▐▌▐▛▀▜▌▐▌ ▝▜▌▐▌▝▜▌▐▛▀▀▘▐▛▀▚▖
 ▝▚▞▘ ▗▄█▄▖▐▌ ▐▌ █  ▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▝▚▄▞▘▐▙▄▄▖▐▌ ▐▌

"

LIST_OF_APPS="
dmidecode
dnsmasq
iptables-nft
libvirt
qemu-base
virt-manager
"

paru -S --needed $LIST_OF_APPS
systemctl enable libvirtd
systemctl start libvirtd
sudo usermod -aG libvirt $USER
