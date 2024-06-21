#!/usr/bin/env bash

cd ~/Downloads
git clone https://github.com/drewgrif/jag_dots

\cp -r ~/Downloads/jag_dots/bin/ ~
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
\cp -r ~/Downloads/jag_dots/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/bspwm/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/dk/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/dunst/ ~/.config/
# \cp -r ~/Downloads/jag_dots/.config/i3/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/picom/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/polybar/ ~/.config/
# \cp -r ~/Downloads/jag_dots/.config/qtile/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/sxhkd/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/rofi/ ~/.config/
# \cp -r ~/Downloads/jag_dots/.config/neofetch/ ~/.config/

# DWM patched with slstatus patched
bash ~/bookworm-scripts/resources/dwm-custom
