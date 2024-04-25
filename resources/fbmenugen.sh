#!/usr/bin/env bash

sudo apt install -y libgtk3-perl
sudo apt install -y libmodule-build-perl

## install LinuxDesktopFile
cd ~/Downloads
git clone https://github.com/trizen/Linux-DesktopFiles.git
cd Linux-DesktopFiles
perl Build.PL
     ./Build
     ./Build test
sudo   ./Build install
     
mkdir -p ~/.local/bin/
mkdir -p ~/.config/fbmenugen

cd ~/Downloads
git clone https://github.com/trizen/fbmenugen.git
cd fbmenugen
cp fbmenugen ~/.local/bin/
cp schema.pl ~/.config/fbmenugen

sudo rm -r ~/Downloads/Linux-DesktopFiles
sudo rm -rf ~/Downloads/fbmenugen

fbmenugen     # dynamic menu with icons




