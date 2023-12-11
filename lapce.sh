#!/bin/sh

# Making sure you have unarchiver

sudo apt install unzip

# Retrieve lapce zipped file 

cd ~/Downloads

# This should work
wget -O lapce-linux.tar.bz2 "https://github.com/lapce/lapce/releases/latest/download/Lapce-linux.tar.gz"

# Extract files to /opt directory

sudo tar -xvf lapce-linux.tar.bz2 -C /opt/;rm lapce-linux.tar.bz2
cd /opt/Lapce/
sudo wget https://raw.githubusercontent.com/lapce/lapce/master/extra/images/logo.png
cd

# adding desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Version=1.0
Type=Application

Name=Lapce
Comment=Lightning-fast and powerful code editor written in Rust
Categories=Development;IDE;
GenericName=Code Editor
StartupWMClass=lapce

Icon=/opt/Lapce/logo.png
Exec=/opt/Lapce/lapce %F
Terminal=false
MimeType=text/plain;inode/directory;
Actions=new-window;
EOF
sudo cp ./temp /usr/share/applications/lapce.desktop;rm ./temp


