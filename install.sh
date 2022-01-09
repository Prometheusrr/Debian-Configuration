#!/bin/bash

#Packages
sudo apt install apt-transport-https curl git neofetch kitty sassc meson libglib2.0-dev build-essential dkms nautilus-nextcloud 

#Move and Copy files
rm -rf ~/.bashrc
cp -r Etc/bash /$HOME/$USER/.bashrc
cp -r /$HOME/$USER/Apps
cp -r fonts/ /$HOME/$USER/.fonts
rm /$HOME/$USER/.config/kitty
cp -r kitty/ /$HOME/$USER/kitty

#Install Bash
chmod +x Etc/Brave
./Brave
chmod +x Etc/pop-gtk
./pop-gtk
chmod +x Etc/pop-icon

#Anaconda install
wget https://repo.anaconda.com/archive/Anaconda3-2021.11-Linux-x86_64.sh
chmod +x Anaconda*
./Anaconda*
sudo cp -r anaconda.desktop /usr/share/applications/

#Install Codium
chmod +x Etc/vscodium
./vscodium

#Arduino
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz 
tar -xf arduino*
./arduino-1.8.19-linux64/install.sh



