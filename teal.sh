#!/bin/bash

cd ~/Downloads
git clone https://github.com/vinceliuice/Jasper-gtk-theme.git
cd Jasper-gtk-theme/
./install.sh -c dark --tweaks dracula

cd ~/Downloads
git clone https://github.com/vinceliuice/Colloid-icon-theme.git
cd Colloid-icon-theme/
./install.sh -t teal -s dracula

cd
