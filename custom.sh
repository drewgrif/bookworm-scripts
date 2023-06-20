#!/bin/bash

cd ~/Downloads
git clone https://github.com/drewgrif/dotfiles
cd ~/Downloads/dotfiles/
cp -r bin/ ~/bin
sudo cp bin/pulseaudio-control.bash /bin/
cp .config/bspwm/ ~/.config/bspwm/
cp .config/dk/ ~/.config/dk/
cp .config/dunst/ ~/.config/dunst
cp .config/picom/ ~/.config/picom/
cp .config/polybar/ ~/.config/polybar
cp .config/qtile/ ~/.config/qtile/
cp .config/sxhkd ~/.config/sxhkd/
cp .config/rofi/ ~/.config/rofi/

