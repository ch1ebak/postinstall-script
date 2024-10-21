#!/bin/bash

git clone https://github.com/ch1ebak/dwm-ch1ebak
cd dwm-ch1ebak/dwm
sudo make clean install
cd ..
cd dwmblocks
sudo make clean install
sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
