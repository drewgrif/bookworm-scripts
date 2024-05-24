#!/usr/bin/env bash

cd ~/Downloads
git clone https://github.com/drewgrif/jag_dots

\cp -r ~/Downloads/jag_dots/bin/ ~
chmod +x ~/bin/*
\cp -r ~/Downloads/jag_dots/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/dunst/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/picom/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/waybar/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/sway/ ~/.config/
\cp -r ~/Downloads/jag_dots/.config/rofi/ ~/.config/
