#!/bin/bash

cp -R .config .fonts ~/
cp .Xresources .vimrc .bash_aliases ~/
sudo cp etc_X11_xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d

chmod -R +x ~/.config/i3/scripts

sudo apt install < ubuntu_packages.txt
sudo fc-cache -f -v
