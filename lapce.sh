#!/bin/sh

# Making sure you have unarchiver

sudo apt install unzip

# Retrieve lapce zipped file 

# Create a temporary directory
temp_dir=$(mktemp -d)

# Change directory to the temporary directory
cd "$temp_dir"

# This should work
wget -O lapce-linux-amd64.tar.gz "https://github.com/lapce/lapce/releases/latest/download/Lapce-linux-amd64.tar.gz"

# Extract files to /opt directory

sudo tar -xvf lapce-linux-amd64.tar.gz -C /opt/;rm lapce-linux-amd64.tar.gz
cd /opt/Lapce/
sudo wget https://raw.githubusercontent.com/lapce/lapce/master/extra/images/logo.png
cd "$temp_dir"

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


# Clean up: remove the temporary directory
rm -rf "$temp_dir"
