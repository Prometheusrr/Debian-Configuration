#!/bin/bash

sudo apt policy pipewire pipewire-audio-client-libraries -y
sudo apt install pipewire pipewire-audio-client-libraries -y


#Create an empty file
sudo touch /etc/pipewire/media-session.d/with-pulseaudio

#Create a pipewire-pulse service
sudo cp /usr/share/doc/pipewire/examples/systemd/user/pipewire-pulse.* /etc/systemd/user/

#Reload the daemon file
sudo systemctl --user daemon-reload

#Disable PulseAudio service
sudo systemctl --user --now disable pulseaudio.service pulseaudio.socket

#Enable and start the PipeWire service:
sudo systemctl --user --now enable pipewire pipewire-pulse

#Verify Changes
pactl info | grep "Server Name" >> info.txt
cat info.txt
rm info.txt

#Reboot to set changes
sudo systemctl --user mask pulseaudio


