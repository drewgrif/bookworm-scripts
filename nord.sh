#!/bin/sh

cd ~/Downloads

git clone https://github.com/vinceliuice/Fluent-icon-theme.git
cd Fluent-icon-theme
./install.sh grey

cd ~/Downloads
git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
cd Colloid-gtk-theme
yes | ./install.sh -t grey -c dark --tweaks nord


