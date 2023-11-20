#!/bin/sh

# Making sure you have unarchiver

sudo apt install unzip

# Retrieve thunderbird 15 zipped file 

cd ~/Downloads

# This should work if thunderbird updates to the most current version
wget -O thunderbird.tar.bz2 "https://download.mozilla.org/?product=thunderbird-latest&os=linux64&lang=en-US"

# Extract files to /opt directory

sudo tar -xvf thunderbird.tar.bz2 -C /opt/;rm thunderbird.tar.bz2


# adding desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Version=115.4
Type=Application
Name=Thunderbird
Comment=Mail
Exec=/opt/thunderbird/./thunderbird
Icon=/opt/thunderbird/chrome/icons/default/default128.png
Terminal=false
StartupNotify=false
EOF
sudo cp ./temp /usr/share/applications/thunderbird.desktop;rm ./temp


