#!/bin/sh

cd ~/Downloads

git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh -t default -s all


cd ~/Downloads
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
yes | ./install.sh -c dark
yes | ./install.sh -c dark --tweaks nord
yes | ./install.sh -c dark --tweaks black
yes | ./install.sh -c dark --tweaks dracula
