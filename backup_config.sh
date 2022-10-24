#!/bin/bash
echo "                          "
echo "## Copying config files ##"
echo "##########################"
sleep 2

cd ~/
cp -v .Xresources .vimrc .profile .bash_aliases .bashrc ~/dotfiles
cp -vR .ssh ~/Private/Aplicaciones/Configs
sleep 2

cd ~/.config
cp -vR conky dunst i3 kitty ranger rofi picom.conf redshift.conf user-dirs.dirs ~/dotfiles/.config
cp -vR gtk-3.0/bookmarks ~/dotfiles/.config
sleep 2

echo "                          "
echo "## Push to github  ##"
echo "#####################"
sleep 2
cd ~/dotfiles
git add .
git commit -m "Update files"
git push origin main
sleep 2

echo "                          "
echo "###### backup complete ######"
sleep 2
