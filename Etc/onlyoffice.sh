#!/bin/bash

# GPG Key
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5

# Add desktop editors repository:
echo 'deb https://download.onlyoffice.com/repo/debian squeeze main' | sudo tee -a /etc/apt/sources.list.d/onlyoffice.list

# Update
sudo apt-get update

# Install OnlyOffice
sudo apt-get install onlyoffice-desktopeditors
