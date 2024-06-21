#!/bin/bash

# Main list of packages
packages=(
	"python3"
    "python3-pip"
    "python3-venv"
    "python3-v-sim"
    "python-dbus-dev"
    "libpangocairo-1.0-0"
    "python3-cairocffi"
    "python3-xcffib"
    "libxkbcommon-dev"
    "libxkbcommon-x11-dev"
    "tilix"
    "firefox-esr"
)

# Function to read common packages from a file
read_base_packages() {
    local base_file="$1"
    if [ -f "$base_file" ]; then
        packages+=( $(< "$base_file") )
    else
        echo "Base packages file not found: $common_file"
        exit 1
    fi
}

# Read common packages from file
read_base_packages "base_packages.txt"

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

xdg-user-dirs-update

# Setting up virtual environment for qtile.
python3 -m venv $qtilevenv 
mkdir ~/.local/bin/

# Git clone into virtual environment
git clone https://github.com/qtile/qtile.git $qtilevenv/qtile

# Install Qtile
$qtilevenv/bin/pip install $qtilevenv/qtile/.

# Install psutil
$qtilevenv/bin/pip install psutil

# Adding venv to correct path ~/.local/bin/qtile

ln -sf $qtilevenv/bin/qtile ~/.local/bin/

# Adding qtile.desktop to Lightdm xsessions directory
cat > ./temp << "EOF"
[Desktop Entry]
Name=Qtile
Comment=Qtile Session
Type=Application
Keywords=wm;tiling
EOF
sudo cp ./temp /usr/share/xsessions/qtile.desktop;rm ./temp
u=$USER
sudo echo "Exec=/home/$u/.local/bin/qtile start" | sudo tee -a /usr/share/xsessions/qtile.desktop

# make sure lightdm is installed
bash ~/bookworm-scripts/install_scripts/lightdm.sh
