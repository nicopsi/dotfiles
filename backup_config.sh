#!/bin/bash

cd ~/
cp -v .Xresources .vimrc .profile .bash_aliases .bashrc ~/dotfiles
cp -vR .ssh ~/Private/Aplicaciones/Configs

cd ~/.config
cp -vR conky dunst i3 kitty ranger rofi picom.conf redshift.conf ~/dotfiles/.config

cd ~/dotfiles
git add .
git commit -m "Update files"
git push origin main

echo "###### backup to ~/Documents/Configs complete ######"
