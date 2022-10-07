#!/bin/bash

cd ~/
cp -v .Xresources .vimrc .profile .bash_aliases .bashrc ~/Documents/Configs

cd ~/.config
cp -vR conky dunst i3 kitty ranger rofi picom.conf redshift.conf ~/Documents/Configs/.config

cd ~/

echo "###### backup to ~/Documents/Configs complete ######"
