#!/bin/sh

# DOTFILES
echo -e "
    ____   ____  ______ ______ ____ __     ______ _____
   / __ \ / __ \/_  __// ____//  _// /    / ____// ___/
  / / / // / / / / /  / /_    / / / /    / __/   \__ \
 / /_/ // /_/ / / /  / __/  _/ / / /___ / /___  ___/ /
/_____/ \____/ /_/  /_/    /___//_____//_____/ /____/
                                                                                        
"
                                                                                        
mv -r .dotfiles/ .mozilla/ Dokumenty/ Obrazy/ /home/$USER/
cd /home/$USER/.dotfiles
stow .
cd ..
                                                                                        
# FINISHING TOUCHES
trash -v /home/$USER/.bash_profile
echo -e "xrdb ~/.Xresources" > .xinitrc
echo -e "exec qtile start" >> .xinitrc
                                                                                        
# cp assets/* /home/$USER/.local/share/
