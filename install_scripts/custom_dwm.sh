#!/bin/bash

# Function to check and rename ~/.config/suckless if it exists
check_and_rename_suckless_dir() {
    local suckless_dir="$HOME/.config/suckless"
    local backup_dir="$HOME/.config/suckless.orig"

    if [ -d "$suckless_dir" ]; then
        echo "Found existing $suckless_dir directory. Renaming to $backup_dir."
        mv "$suckless_dir" "$backup_dir"
        if [ $? -ne 0 ]; then
            echo "Failed to rename $suckless_dir to $backup_dir. Exiting."
            exit 1
        fi
    fi
}

# Call function to check and rename ~/.config/suckless if necessary
check_and_rename_suckless_dir

# Main list of packages
packages=(
    "xorg-dev"
    "sxhkd"
    "firefox-esr"
    "tilix"
    "kitty"
    "flameshot"
)

# Function to read common packages from a file
read_common_packages() {
    local common_file="$1"
    if [ -f "$common_file" ]; then
        packages+=( $(< "$common_file") )
    else
        echo "Common packages file not found: $common_file"
        exit 1
    fi
}

# Read common packages from file
read_common_packages "$HOME/bookworm-scripts/install_scripts/common_packages.txt"

# Function to install packages if they are not already installed
install_packages() {
    local pkgs=("$@")
    local missing_pkgs=()

    # Check if each package is installed
    for pkg in "${pkgs[@]}"; do
        if ! dpkg -l | grep -q " $pkg "; then
            missing_pkgs+=("$pkg")
        fi
    done

    # Install missing packages
    if [ ${#missing_pkgs[@]} -gt 0 ]; then
        echo "Installing missing packages: ${missing_pkgs[@]}"
        sudo apt update
        sudo apt install -y "${missing_pkgs[@]}"
        if [ $? -ne 0 ]; then
            echo "Failed to install some packages. Exiting."
            exit 1
        fi
    else
        echo "All required packages are already installed."
    fi
}

# Call function to install packages
install_packages "${packages[@]}"

# Enable services
sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Update user directories
xdg-user-dirs-update
mkdir -p ~/Screenshots/

# Write dwm.desktop file
cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/dwm.desktop
rm ./temp

# Clone or check existing jag_dots repository
SCRIPT_DIR=~/bookworm-scripts
REPO_URL=https://github.com/drewgrif/jag_dots.git

if [ -d "$SCRIPT_DIR/jag_dots" ]; then
    echo "Directory $SCRIPT_DIR/jag_dots already exists."
else
    echo "Cloning jag_dots repository..."
    git clone "$REPO_URL" "$SCRIPT_DIR/jag_dots"
    if [ $? -eq 0 ]; then
        echo "Repository cloned successfully."
    else
        echo "Error: Failed to clone repository."
        exit 1
    fi
fi

# Copy configuration files
\cp -r ~/bookworm-scripts/jag_dots/scripts/ ~
\cp -r ~/bookworm-scripts/jag_dots/.config/dunst/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/kitty/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/rofi/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/picom/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/backgrounds/ ~/.config/

# Move autostart script
mkdir -p ~/.local/share/dwm
\cp -r ~/bookworm-scripts/jag_dots/.local/share/dwm/autostart.sh ~/.local/share/dwm/
chmod +x ~/.local/share/dwm/autostart.sh

# Move patched dwm, slstatus, and st
\cp -r ~/bookworm-scripts/jag_dots/.config/suckless/ ~/.config/

# Install custom dwm
cd ~/.config/suckless/dwm
make
sudo make clean install

# Install custom slstatus
cd ~/.config/suckless/slstatus
make
sudo make clean install

# Install custom st
cd ~/.config/suckless/st
make
sudo make clean install

# Install additional scripts and themes
bash ~/bookworm-scripts/install_scripts/picom.sh
bash ~/bookworm-scripts/install_scripts/nerdfonts.sh
bash ~/bookworm-scripts/colorschemes/blue.sh
