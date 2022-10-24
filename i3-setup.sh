#!/bin/bash

# Copy config files to proper places
echo "                       "
echo "Copying config files..."
echo "                       "
cp -v .Xresources .vimrc .bash_aliases .profile ~/
cp -vR ~/dotfiles/.config/ ~/
sleep 2

echo "                       "
echo "Creating backup and undo directories for vim"
echo "                       "
mkdir -p ~/.vim/backup
mkdir -p ~/.vim/undo
sleep 2

echo "                       "
echo "Setting up touchpad"
echo "                       "
sudo mkdir -p /etc/X11/xorg.conf.d 
sudo cp -vR etc_X11_xorg.conf.d/90-touchpad.conf /etc/X11/xorg.conf.d/
sleep 2

echo "                       "
echo "Setting up enviromental variables"
echo "                       "
sudo touch /etc/environment
sudo echo 'QT_STYLE_OVERRIDE=gtk2' >> /etc/environment
sleep 2

sudo chmod u+s /usr/bin/light
chmod -R 764 ~/.config/i3/scripts
sleep 2
