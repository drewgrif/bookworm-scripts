#!/bin/sh

# Making sure you have unarchiver

sudo apt install unzip

# Retrieve discord tar.gz file 

wget "https://discordapp.com/api/download/stable?platform=linux&format=tar.gz" -O discord.tar.gz

# Extract files to /opt directory

sudo tar -xvf discord.tar.gz -C /opt/;rm discord.tar.gz

# Create symbolic link

sudo ln -sf /opt/Discord/Discord /usr/bin/Discord

# adding desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Name=Discord
StartupWMClass=discord
Comment=All-in-one voice and text chat for gamers that's free, secure, and works on both your desktop and phone.
GenericName=Internet Messenger
Exec=/usr/bin/Discord
Icon=/opt/Discord/discord.png
Type=Application
Categories=Network;InstantMessaging;
Path=/usr/bin
EOF
sudo cp ./temp /usr/share/applications/discord.desktop;rm ./temp


