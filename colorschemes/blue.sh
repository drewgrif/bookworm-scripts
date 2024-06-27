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
if check_directory "$HOME/.local/share/icons/Colloid-Dark"; then
    echo "Colloid-icon-theme is already installed."
else
    echo "Installing Colloid-icon-theme..."
    cd ~/Downloads || exit
    if [ -d "Colloid-icon-theme" ]; then
        echo "Colloid-icon-theme repository already cloned. Skipping clone step."
    else
        git clone https://github.com/vinceliuice/Colloid-icon-theme.git
    fi
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
    if [ -d "Colloid-gtk-theme" ]; then
        echo "Colloid-gtk-theme repository already cloned. Skipping clone step."
    else
        git clone https://github.com/vinceliuice/Colloid-gtk-theme.git
    fi
    cd Colloid-gtk-theme || exit
    yes | ./install.sh -c dark -t default --tweaks black
    rm -rf ~/Downloads/Colloid-gtk-theme
fi


bash ~/bookworm-scripts/colorschemes/update_gtk_settings.sh
