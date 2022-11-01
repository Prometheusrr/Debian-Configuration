#!/bin/bash

sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 -y

wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh

bash Anaconda3-2022.10-Linux-x86_64.sh

cp anaconda.desktop ~/.local/share/applications/
desktop-file-install --dir=$HOME/.local/share/applications anaconda.desktop
update-desktop-database ~/.local/share/applications

rm -rf Anaconda3-2022.10-Linux-x86_64.sh

