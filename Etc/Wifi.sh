#!/bin/bash

#Update
sudo apt update

#install packages
sudo apt install build-essential git dkms -y

#Git clone
git clone https://github.com/brektrou/rtl8821CU.git
mv rt18821CU/ /opt

#Install wifi apdater
sudo chmod +x /opt/rt18821CU/dkms-install.sh
sudo ./opt/rt18821CU/dkms-install.sh
sudo modprobe /opt/rt18821CU/8821cu 
