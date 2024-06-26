#!/bin/sh

# Function to check if a directory exists
check_directory() {
    if [ -d "$1" ]; then
        return 0  # Directory exists
    else
        return 1  # Directory does not exist
    fi
}

# Check if Colloid-icon-theme is installed
if check_directory "$HOME/.local/share/icons/Colloid-dark"; then
    echo "Colloid-icon-theme is already installed."
else
    echo "Installing Colloid-icon-theme..."
    cd ~/Downloads || exit
    git clone https://github.com/vinceliuice/Colloid-icon-theme.git
    cd Colloid-icon-theme || exit
    ./install.sh -t default -s default
    rm -rf ~/Downloads/Colloid-icon-theme/
fi

# Check if Colloid-gtk-theme is installed
if check_directory "$HOME/.themes/Colloid-Dark"; then
    echo "Colloid-gtk-theme is already installed."
else
    echo "Installing Colloid-gtk-theme..."
    cd ~/Downloads || exit
    git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
    cd Colloid-gtk-theme || exit
    yes | ./install.sh -c dark -t default --tweaks black
    rm -rf ~/Downloads/Colloid-gtk-theme
fi

# Copy GTK 3.0 configuration files
\cp -r ~/bookworm-scripts/jag_dots/.config/gtk-3.0/ ~/.config/

