#!/bin/bash
echo "Copying config files"
sleep 1
cd ~/
cp -v .Xresources .vimrc .profile .bash_aliases .bashrc ~/dotfiles
cp -vR .ssh ~/Private/Aplicaciones/Configs

cd ~/.config
cp -vR conky dunst i3 kitty ranger rofi picom.conf redshift.conf user-dirs.dirs ~/dotfiles/.config
cp -vR gtk-3.0/bookmarks ~/dotfiles/.config
sleep 1

echo "Push to github"
sleep 1
cd ~/dotfiles
git add .
git commit -m "Update files"
git push origin main
sleep 1

echo "###### backup complete ######"
