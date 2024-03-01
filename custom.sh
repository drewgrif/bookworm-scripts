#!/usr/bin/env bash

cd ~/Downloads
git clone https://github.com/drewgrif/dotfiles

\cp -r ~/Downloads/dotfiles/bin/ ~
chmod +x ~/bin/*
sudo cp ~/bin/pulseaudio-control.bash /bin/
\cp -r ~/Downloads/dotfiles/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/bspwm/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dk/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dunst/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/i3/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/picom/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/polybar/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/qtile/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/sxhkd/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/rofi/ ~/.config/

# DWM patched with slstatus patched
bash ~/bookworm-scripts/resources/dwm-custom


