#!/bin/sh

# Making sure you have unarchiver

sudo apt install unzip

# Retrieve discord tar.gz file 

cd ~/Downloads/

wget "https://download.brother.com/welcome/dlf006893/linux-brprinter-installer-2.2.3-1.gz"

gunzip linux-brprinter-installer-*.*.*-*.gz

sudo bash linux-brprinter-installer-2.2.3-1 mfc7440n


