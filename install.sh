#!/bin/bash
#Setting Home Dirs folders
xdg-user-dirs-update

#Update Packages
echo "UPDATING"
echo "sudo apt update && sudo apt upgrade -y"

#Switch to pipewire
echo "SWITCHING TO PIPEWIRE"
bash pipewire.sh

#Package to remove KDE or GNOME SETTING THEMES
if [ $DESKTOP_SESSION = 'plasma' ]; then
    echo "sudo apt purge kdeconnect kmail akregator gimp libreoffice* konqueror kaddressbook korganizer juk k3b kwalletmanager xterm kmouth -y"
    echo "sudo apt install gnome-disk-utility neofetch git curl linux-headers-amd64 kitty sassc meson libglib2.0-dev build-essential dkms flameshot -y"
elif [ $DESKTOP_SESSION = 'gnome' ]; then
    echo "sudo apt install apt-transport-https curl git neofetch kitty sassc meson libglib2.0-dev build-essential dkms flameshot -y"
    echo "sudo apt purge libreoffice* gnome-2048 gnome-chess gnome-color-manager gnome-contacts gnome-characters aisleriot gnome-games gnome-music gnome-logs gnome-klotski gnome-mahjongg gnome-mines gnome-nibbles gnome-documents gnome-sudoku gnome-sushi gnome-taquin gnome-robots hitori firefox-esr five-or-more four-in-a-row lightsoff rhythmbox quadrapassel swell-foop gnome-sound-recorder gnome-screenshot cheese simple-scan gnome-font-viewer gnome-maps shotwell -y"
fi

#Setting Themes
bash themes.sh

#Move and Copy files
mv Photo-Videos/ $HOME/Pictures
rm -rf ~/.bashrc
cp -r Etc/bashrc $HOME/.bashrc
cp -r Apps/ $HOME/Documents/Apps
cp -r fonts/ $HOME/.fonts
rm -rf $HOME/.config/kitty/
cp -r kitty/ $HOME/.config/

#Arduino
wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz 
tar -xf arduino*
sudo ./arduino-1.8.19/install.sh

sudo apt autoremove -y

echo "DONE"






