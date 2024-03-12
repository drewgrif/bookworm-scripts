#!/bin/sh

# Dependencies
sudo apt install -y build-essential cmake cmake-extras curl gettext libnotify-bin light meson ninja-build

# Sway installation for Debian Bookworm
sudo apt install -y sway waybar swaylock swayidle swaybg

# Terminals
sudo apt install -y kitty tilix

# grim (screenshots in Wayland) and slurp (select a region in wayland) - kinda like scrot
sudo apt install -y grim slurp

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# dunst or mako
sudo apt install -y dunst unzip xdotool libnotify-dev

# Sound
sudo apt install -y pipewire pavucontrol pamixer

# Multimedia
sudo apt install -y mpv mpv-mpris nvtop pamixer ffmpeg qimgv gimp obs-studio mkvtoolnix-gui redshift eog brightnessctl

# wofi - confusingly similar to rofi
# sudo apt install wofi
bash ~/bookworm-scripts/resources/rofi-wayland

# text editor
# sudo apt install -y l3afpad 
# sudo apt install -y geany geany-plugins
# sudo apt install -y gedit

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
# sudo apt install -y cups system-config-printer simple-scan
# sudo apt install -y bluez blueman

# sudo systemctl enable cups
# sudo systemctl enable bluetooth

# PDF 
sudo apt install -y evince pdfarranger

# Others
sudo apt install -y figlet galculator cpu-x udns-utils whois curl tree

# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme
bash ~/bookworm-scripts/resources/nerdfonts.sh

# Install SDDM Console Display Manager
# sudo apt install --no-install-recommends -y sddm
# sudo systemctl enable sddm

# Install the Ly Console Display Manager
bash ~/bookworm-scripts/ly.sh

mkdir ~/Screenshots/

\cp ~/bookworm-scripts/resources/.bashrc ~


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
