#!/bin/bash

# Copy config files to proper places
echo "Copying config files..."
cp -v .Xresources .vimrc .bash_aliases .profile ~/
cp -vR ~/dotfiles/.config/ ~/
sleep 2

echo "Creating backup and undo directories for vim"
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
sleep 2

echo "Setting up touchpad"
sudo mkdir -p /etc/X11/xorg.conf.d 
sudo cp -vR etc_X11_xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d/
sleep 2

echo "Setting up enviromental variables"
sudo touch /etc/environment
sudo echo 'QT_STYLE_OVERRIDE=gtk2' >> /etc/environment
sleep 2

sudo chmod u+s /usr/bin/light
chmod -R 764 ~/.config/i3/scripts

