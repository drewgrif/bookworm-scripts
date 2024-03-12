#!/usr/bin/env bash

cd ~/Downloads
git clone https://github.com/drewgrif/dotfiles

\cp -r ~/Downloads/dotfiles/bin/ ~
chmod +x ~/bin/*
\cp -r ~/Downloads/dotfiles/.config/backgrounds/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/dunst/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/picom/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/waybar/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/sway/ ~/.config/
\cp -r ~/Downloads/dotfiles/.config/rofi/ ~/.config/



