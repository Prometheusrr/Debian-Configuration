#!/bin/bash

if [ $DESKTOP_SESSION = 'plasma' ]; then
    cp -r Theme/windark $HOME/.local/share/aurorae/themes/
elif [ $DESKTOP_SESSION = 'gnome' ]; then
    git clone https://github.com/vinceliuice/Orchis-theme.git
    ./Orchis-theme/install.sh -t default
    rm -rf Orchis-theme
fi
