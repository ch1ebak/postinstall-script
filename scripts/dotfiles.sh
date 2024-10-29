#!/bin/bash

cd /home/$USER/
trash .config/qtile .bashrc .Xresources
git clone https://github.com/ch1ebak/dotfiles
mv dotfiles .dotfiles
cd .dotfiles
mv config .config
stow . --adopt
cd /home/$USER/
trash -v /home/$USER/.bash_profile
