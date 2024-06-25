#!/bin/bash

# Main list of packages
packages=(
    "xorg-dev"
    "sxhkd"
    "firefox-esr"
    "tilix"
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
read_common_packages $HOME/bookworm-scripts/install_scripts/common_packages.txt

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

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

xdg-user-dirs-update
mkdir ~/Screenshots/

cat > ./temp << "EOF"
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
EOF
sudo cp ./temp /usr/share/xsessions/dwm.desktop;rm ./temp


# Creating directories
mkdir ~/.config/suckless

SCRIPT_DIR=~/bookworm-scripts
REPO_URL=https://github.com/drewgrif/jag_dots.git

# Check if the directory already exists
if [ -d "$SCRIPT_DIR/jag_dots" ]; then
    echo "Directory $SCRIPT_DIR/jag_dots already exists."
else
    # Clone the repository
    echo "Cloning jag_dots repository..."
    git clone $REPO_URL $SCRIPT_DIR/jag_dots
    if [ $? -eq 0 ]; then
        echo "Repository cloned successfully."
    else
        echo "Error: Failed to clone repository."
        exit 1
    fi
fi

\cp -r ~/bookworm-scripts/jag_dots/scripts/ ~
\cp -r ~/bookworm-scripts/jag_dots/.config/dunst/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/kitty/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/rofi/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/picom/ ~/.config/
\cp -r ~/bookworm-scripts/jag_dots/.config/backgrounds/ ~/.config/

# move autostart
mkdir -p ~/.local/share/dwm
\cp -r ~/bookworm-scripts/jag_dots/.local/share/dwm/autostart.sh ~/.local/share/dwm/
chmod +x ~/.local/share/dwm/autostart.sh

# moving patched dwm and slstatus
\cp -r ~/bookworm-scripts/jag_dots/.config/suckless/ ~/.config/

# installing custom dwm
cd ~/.config/suckless/dwm
make
sudo make clean install

# installing custom slstatus
cd ~/.config/suckless/slstatus
make
sudo make clean install

# installing custom st 
cd ~/.config/suckless/st
make
sudo make clean install


# FT-Labs picom and nerdfonts are installed
bash ~/bookworm-scripts/install_scripts/picom.sh
bash ~/bookworm-scripts/install_scripts/nerdfonts.sh

# adding gtk theme and icon theme
bash ~/bookworm-scripts/colorschemes/blue.sh

# make sure lightdm is installed
bash ~/bookworm-scripts/install_scripts/lightdm.sh
