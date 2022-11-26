#!/bin/bash

# This makes sure to mount all drive to the system
mount $HOME/SMB 2>/dev/null

# Remove Past Backups
rm -r $HOME/SSD/Backup/* 2>/dev/null
rm -r $HOME/SMB/Backup/* 2>/dev/null

# Sets variable for current date and time to name backup dir
currentdate=`date +"%Y-%m-%d:%H:%M"`
echo Date and Time: $currentdate

# This is the backup for my configurations 
echo "BACKUP"

# This Make dir for backup
mkdir $HOME/SSD/Backup/$currentdate

# Copy important files to backup dir
cp -r $HOME/Documents/ $HOME/SSD/Backup/$currentdate
cp -r $HOME/Downloads/ $HOME/SSD/Backup/$currentdate
cp -r $HOME/Pictures/ $HOME/SSD/Backup/$currentdate
cp -r $HOME/.backup/ $HOME/SSD/Backup/$currentdate

# Makes Backup dir for Hidden Configs
mkdir $HOME/SSD/Backup/$currentdate/HiddenConfigs

# Backups Fstab, root bashrc, and SMB,txt
touch $HOME/SSD/Backup/$currentdate/HiddenConfigs/fstab.txt
cat /etc/fstab > $HOME/SSD/Backup/$currentdate/HiddenConfigs/fstab.txt 
cp $HOME/.smb $HOME/SSD/Backup/$currentdate/HiddenConfigs/SMB.txt
cp $HOME/.backup/rootbashrc.bk $HOME/SSD/Backup/$currentdate/HiddenConfigs/rootbrc.bk
crontab -l > $HOME/SSD/Backup/$currentdate/HiddenConfigs/crontab.txt

# Compress Backup dir
tar -czvf $HOME/SSD/Backup/$currentdate.tar.gz $HOME/SSD/Backup/$currentdate 2>/dev/null

# Moves Compress Backup dir to Media folder
mv $HOME/SSD/Backup/$currentdate.tar.gz $HOME/SMB/Backup  2>/dev/null
