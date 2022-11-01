#!/bin/bash

mkdir $HOME/.local/share/applications 2>/dev/null

sudo apt-get install desktop-file-utils libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y

wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh

bash Anaconda3-2022.10-Linux-x86_64.sh

cp -r Icon/ $HOME/anaconda3/ 
ls $HOME/anaconda3/Icon

echo "#!/usr/bin/env xdg-open" > anaconda.desktop
echo '[Desktop Entry]' >> anaconda.desktop
echo 'Name=Anaconda' >> anaconda.desktop
echo 'Version=1.0' >> anaconda.desktop
echo 'Type=Application' >> anaconda.desktop
echo Exec=$HOME/anaconda3/bin/anaconda-navigator >> anaconda.desktop
echo Icon=$HOME/anaconda3/Icon/anaconda-icon-256x256.png >> anaconda.desktop
echo 'Comment=Open Anaconda Navigator' >> anaconda.desktop
echo 'Terminal=false' >> anaconda.desktop

cp anaconda.desktop ~/.local/share/applications/
desktop-file-install --dir=$HOME/.local/share/applications anaconda.desktop
update-desktop-database ~/.local/share/applications

rm -rf Anaconda3-2022.10-Linux-x86_64.sh

