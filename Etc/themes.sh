#!/bin/bash

if [ $DESKTOP_SESSION = 'plasma' ]; then
    echo "KDE"
    echo "cp -r Theme/setdark $HOME/.local/share/aurorae/themes/"
elif [ $DESKTOP_SESSION = 'gnome' ]; then
    echo "GNOME"
    echo "git clone https://github.com/vinceliuice/Orchis-theme.git"
    echo "./Orchis-theme/install.sh -t default"
fi
