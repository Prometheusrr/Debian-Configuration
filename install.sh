#!/bin/bash

#Packages
sudo apt install apt-transport-https curl git neofetch kitty sassc meson libglib2.0-dev build-essential dkms nautilus-nextcloud variety wireguard flameshot -y
sudo apt purge libreoffice* gnome-2048 gnome-chess gnome-color-manager gnome-contacts gnome-characters aisleriot gnome-games gnome-music gnome-logs gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-documents gnome-sudoku gnome-sushi gnome-taquin gnome-robots hitori firefox-esr five-or-more four-in-a-row lightsoff rhythmbox quadrapassel swell-foop gnome-sound-recorder gnome-screenshot cheese simple-scan gnome-font-viewer gnome-maps shotwell -y
sudo apt autoremove -y

#Move and Copy files
mv Photo-Videos/ $HOME/Pictures
rm -rf ~/.bashrc
cp -r Etc/bashrc $HOME/.bashrc
cp -r Apps/ $HOME/Documents/Apps
cp -r fonts/ $HOME/.fonts
rm -rf $HOME/.config/kitty/
cp -r kitty/ $HOME/.config/

#Install Bash
chmod +x Etc/brave
./Etc/brave
chmod +x Etc/pop-gtk
./Etc/pop-gtk
chmod +x Etc/pop-icon
./Etc/pop-icon
chmod +x Etc/vscodium
./Etc/vscodium

#Anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
chmod +x Anaconda*
./Anaconda*
sudo cp -r anaconda.desktop /usr/share/applications/
sudo desktop-file-install anaconda.desktop
sudo update-desktop-database

#Arduino
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz 
tar -xf arduino*
sudo ./arduino-1.8.19/install.sh






