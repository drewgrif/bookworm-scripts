#!/bin/bash

cd ~/Downloads
git clone https://github.com/drewgrif/dotfiles
cd ~/Downloads/dotfiles/
cp -r bin/ ~/bin
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
cp .config/backgrounds/ ~/.config/
cp .config/bspwm/ ~/.config/
cp .config/dk/ ~/.config/
cp .config/dunst/ ~/.config/
cp .config/i3/ ~/.config/
cp .config/picom/ ~/.config/
cp .config/polybar/ ~/.config/
cp .config/qtile/ ~/.config/
cp .config/sxhkd/ ~/.config/
cp .config/rofi/ ~/.config/

# DWM patched with slstatus patched
cd ~/bookworm-scripts
./resources/dwm-custom


