#!/bin/bash

LIST_OF_APPS="
dmidecode
dsnmasq
iptables-nft
libvirt
qemu-base
virt-manager
"

paru -S --needed $LIST_OF_APPS
