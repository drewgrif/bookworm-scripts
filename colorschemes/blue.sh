#!/bin/sh

# Function to check if a directory exists
check_directory() {
    if [ -d "$1" ]; then
        return 0  # Directory exists
    else
        return 1  # Directory does not exist
    fi
}

# Function to handle errors
handle_error() {
    echo "Error: $1"
    exit 1
}

# Check if Colloid-icon-theme is installed
if check_directory "$HOME/.local/share/icons/Colloid-dark"; then
    echo "Colloid-icon-theme is already installed."
else
    echo "Installing Colloid-icon-theme..."
    cd ~/Downloads || handle_error "Could not change directory to ~/Downloads"
    git clone https://github.com/vinceliuice/Colloid-icon-theme.git || handle_error "Failed to clone Colloid-icon-theme repository"
    cd Colloid-icon-theme || handle_error "Could not change directory to Colloid-icon-theme"
    ./install.sh -t default -s default || handle_error "Failed to install Colloid-icon-theme"
    rm -rf ~/Downloads/Colloid-icon-theme/ || handle_error "Failed to remove Colloid-icon-theme directory"
fi

# Check if Colloid-gtk-theme is installed
if check_directory "$HOME/.themes/Colloid-Dark"; then
    echo "Colloid-gtk-theme is already installed."
else
    echo "Installing Colloid-gtk-theme..."
    cd ~/Downloads || handle_error "Could not change directory to ~/Downloads"
    git clone https://github.com/vinceliuice/Colloid-gtk-theme.git || handle_error "Failed to clone Colloid-gtk-theme repository"
    cd Colloid-gtk-theme || handle_error "Could not change directory to Colloid-gtk-theme"
    yes | ./install.sh -c dark -t default --tweaks black || handle_error "Failed to install Colloid-gtk-theme"
    rm -rf ~/Downloads/Colloid-gtk-theme || handle_error "Failed to remove Colloid-gtk-theme directory"
fi

# Function to write GTK 3 settings to ~/.config/gtk-3.0/settings.ini
write_gtk3_settings() {
    echo "[Settings]" > ~/.config/gtk-3.0/settings.ini
    echo "gtk-theme-name=\"Colloid-Dark\"" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-icon-theme-name=\"Colloid-dark\"" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-font-name=\"Sans 10\"" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-cursor-theme-name=\"Adwaita\"" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-cursor-theme-size=0" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-toolbar-style=GTK_TOOLBAR_BOTH" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-button-images=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-menu-images=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-enable-event-sounds=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-enable-input-feedback-sounds=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-xft-antialias=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-xft-hinting=1" >> ~/.config/gtk-3.0/settings.ini
    echo "gtk-xft-hintstyle=\"hintfull\"" >> ~/.config/gtk-3.0/settings.ini
}

# Function to write GTK 2 settings to ~/.gtkrc-2.0
write_gtk2_settings() {
    echo "gtk-theme-name=\"Colloid-Dark\"" > ~/.gtkrc-2.0
    echo "gtk-icon-theme-name=\"Colloid-dark\"" >> ~/.gtkrc-2.0
    echo "gtk-font-name=\"Sans 10\"" >> ~/.gtkrc-2.0
    echo "gtk-cursor-theme-name=\"Adwaita\"" >> ~/.gtkrc-2.0
    echo "gtk-cursor-theme-size=0" >> ~/.gtkrc-2.0
    echo "gtk-toolbar-style=GTK_TOOLBAR_BOTH" >> ~/.gtkrc-2.0
    echo "gtk-toolbar-icon-size=GTK_ICON_SIZE_LARGE_TOOLBAR" >> ~/.gtkrc-2.0
    echo "gtk-button-images=1" >> ~/.gtkrc-2.0
    echo "gtk-menu-images=1" >> ~/.gtkrc-2.0
    echo "gtk-enable-event-sounds=1" >> ~/.gtkrc-2.0
    echo "gtk-enable-input-feedback-sounds=1" >> ~/.gtkrc-2.0
    echo "gtk-xft-antialias=1" >> ~/.gtkrc-2.0
    echo "gtk-xft-hinting=1" >> ~/.gtkrc-2.0
    echo "gtk-xft-hintstyle=\"hintfull\"" >> ~/.gtkrc-2.0
}

# Check and configure GTK 3 settings
if [ -f ~/.config/gtk-3.0/settings.ini ]; then
    echo "File ~/.config/gtk-3.0/settings.ini already exists. Overwriting..."
    write_gtk3_settings
else
    write_gtk3_settings
fi

# Check and configure GTK 2 settings
if [ -f ~/.gtkrc-2.0 ]; then
    echo "File ~/.gtkrc-2.0 already exists. Overwriting..."
    write_gtk2_settings
else
    write_gtk2_settings
fi

echo "GTK and icon themes set to Colloid-Dark and Colloid-dark."
