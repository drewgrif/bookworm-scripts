#!/bin/sh

cd ~/Downloads

git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh -t teal -s all

cd ~/Downloads
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
yes | ./install.sh -t teal -c dark --tweaks nord

cd ~/Downloads
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
yes | ./install.sh -t teal -c dark --tweaks nord
yes | ./install.sh -t teal -c dark --tweaks black
