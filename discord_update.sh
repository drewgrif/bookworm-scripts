#!/bin/sh


# Retrieve discord tar.gz file 

wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar.gz

# Extract files to /opt directory

sudo tar -xvf discord.tar.gz -C /opt/;rm discord.tar.gz
