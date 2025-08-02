#!/usr/bin/env bash

echo -e "
                                                                                        
▗▄▄▖ ▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▖  ▗▖▗▄▄▄▖▗▄▄▖▗▄▄▄▖▗▖  ▗▖ ▗▄▖ ▗▖  ▗▖ ▗▄▄▖▗▄▄▄▖▗▄▄▖ 
▐▌ ▐▌▐▌   ▐▛▚▞▜▌▐▌ ▐▌▐▌  ▐▌▐▌       ▐▌  ▐▌  █  ▐▌ ▐▌ █  ▐▛▚▞▜▌▐▌ ▐▌▐▛▚▖▐▌▐▌   ▐▌   ▐▌ ▐▌
▐▛▀▚▖▐▛▀▀▘▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘    ▐▌  ▐▌  █  ▐▛▀▚▖ █  ▐▌  ▐▌▐▛▀▜▌▐▌ ▝▜▌▐▌▝▜▌▐▛▀▀▘▐▛▀▚▖
▐▌ ▐▌▐▙▄▄▖▐▌  ▐▌▝▚▄▞▘ ▝▚▞▘ ▐▙▄▄▖     ▝▚▞▘ ▗▄█▄▖▐▌ ▐▌ █  ▐▌  ▐▌▐▌ ▐▌▐▌  ▐▌▝▚▄▞▘▐▙▄▄▖▐▌ ▐▌
                                                                                        
"

LIST_OF_APPS="
dmidecode
dnsmasq
libvirt
qemu-base
virt-manager
"

systemctl stop libvirtd
systemctl disable libvirtd
paru -S iptables
paru -Rns $LIST_OF_APPS
