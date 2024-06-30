#!/bin/bash

# Function to install selected packages
install_packages() {
    sudo apt install -y "$@"
}

# File Managers
file_managers=("thunar" "pcmanfm" "krusader" "nautilus" "nemo" "dolphin" "ranger" "nnn" "lf")

echo "Choose File Managers to install (space-separated list, e.g., 1 3 5):"
for i in "${!file_managers[@]}"; do
    echo "$((i+1)). ${file_managers[i]}"
done
read -rp "Selection: " file_manager_selection

selected_file_managers=()
for index in $file_manager_selection; do
    selected_file_managers+=("${file_managers[index-1]}")
done

# Graphics
graphics=("gimp" "flameshot" "eog" "sxiv" "qimgv" "inkscape" "scrot")

echo "Choose graphics applications to install (space-separated list, e.g., 1 3 5):"
for i in "${!graphics[@]}"; do
    echo "$((i+1)). ${graphics[i]}"
done
read -rp "Selection: " graphics_selection

selected_graphics=()
for index in $graphics_selection; do
    selected_graphics+=("${graphics[index-1]}")
done

# Terminals
terminals=("alacritty" "gnome-terminal" "kitty" "konsole" "terminator" "xfce4-terminal" )

echo "Choose Terminals to install (space-separated list, e.g., 1 3):"
for i in "${!terminals[@]}"; do
    echo "$((i+1)). ${terminals[i]}"
done
read -rp "Selection: " terminal_selection

selected_terminals=()
for index in $terminal_selection; do
    selected_terminals+=("${terminals[index-1]}")
done

# Text Editors
text_editors=("geany" "kate" "gedit" "l3afpad" "mousepad" "pluma")

echo "Choose Text Editors to install (space-separated list, e.g., 1 3 5):"
for i in "${!text_editors[@]}"; do
    echo "$((i+1)). ${text_editors[i]}"
done
read -rp "Selection: " text_editor_selection

selected_text_editors=()
for index in $text_editor_selection; do
    selected_text_editors+=("${text_editors[index-1]}")
done

# Multimedia
multimedia=("mpv" "vlc" "audacity" "kdenlive" "obs-studio" "rhythmbox" "ncmpcpp" "mkvtoolnix-gui")

echo "Choose Multimedia applications to install (space-separated list, e.g., 1 3 5):"
for i in "${!multimedia[@]}"; do
    echo "$((i+1)). ${multimedia[i]}"
done
read -rp "Selection: " multimedia_selection

selected_multimedia=()
for index in $multimedia_selection; do
    selected_multimedia+=("${multimedia[index-1]}")
done

# utilities
utilities=( "gparted" "gnome-disk-utility" "neofetch" "nitrogen" "numlockx" "galculator" "cpu-x" "udns-utils" "whois" "curl" "tree" "btop" "htop" "bat" "brightnessctl" "redshift" ) 

echo "Choose utilities applications to install (space-separated list, e.g., 1 3 5):"
for i in "${!utilities[@]}"; do
    echo "$((i+1)). ${utilities[i]}"
done
read -rp "Selection: " utilities_selection

selected_utilities=()
for index in $utilities_selection; do
    selected_utilities+=("${utilities[index-1]}")
done

# Install selected packages
install_packages "${selected_file_managers[@]}" "${selected_graphics[@]}" "${selected_terminals[@]}" "${selected_text_editors[@]}" "${selected_multimedia[@]}" "${selected_utilities[@]}"
