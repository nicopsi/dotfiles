#!/bin/bash

cp .Xresources .vimrc .bash_aliases .profile ~/
cp -R .config/ ~/.config
sudo cp etc_X11_xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d

chmod -R +x ~/.config/i3/scripts

sudo apt install < debian_packages.txt
