#!/bin/bash

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

paru -S --needed --noconfirm $LIST_OF_APPS
systemctl --enable libvirtd
