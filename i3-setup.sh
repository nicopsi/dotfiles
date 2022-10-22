#!/bin/bash

# Copy config files to proper places
cp -v .Xresources .vimrc .bash_aliases .profile ~/
cp -vR ~/dotfiles/.config/ ~/.config
sudo cp etc_X11_xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d
sudo echo 'QT_QPA_PLATFORMTHEME=qt5ct' >> /etc/environment
sudo chmod u+s /usr/bin/light

chmod -R 764 ~/.config/i3/scripts

