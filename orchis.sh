#!/bin/sh

cd ~/Downloads

git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme
./install.sh -s all -t purple pink orange teal grey

cd ~/Downloads
git clone https://github.com/vinceliuice/Orchis-theme.git
cd Orchis-theme
yes | ./install.sh -t grey purple pink teal -c dark --tweaks black

 # ./install.sh -t grey purple pink teal -c dark --tweaks nord
 # ./install.sh -t grey purple pink teal -c dark --tweaks dracula
