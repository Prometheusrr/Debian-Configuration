#!/bin/bash

#Check Envirorment to apply theme
if [ $DESKTOP_SESSION = 'plasma' ]; then
    mkdir $HOME/.local/share/aurorae 2>/dev/null
    mkdir $HOME/.local/share/aurorae/themes 2>/dev/null
    cp -r Theme/BreezeAurorae $HOME/.local/share/aurorae/themes/ 
    cp Theme/OrchisDark $HOME/.local/share/color-schemes/
    ls $HOME/.local/share/aurorae/themes/
    ls $HOME/.local/share/color-schemes/
elif [ $DESKTOP_SESSION = 'gnome' ]; then
    git clone https://github.com/vinceliuice/Orchis-theme.git
    ./Orchis-theme/install.sh -t default
    rm -rf Orchis-theme
fi
