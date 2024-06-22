#!/bin/bash

# Main list of packages
packages=(
	"awesome"
	"awesome-extra"
	"awesome-doc"
    "tilix"
    "firefox-esr"
)

# Function to read base packages from a file
read_base_packages() {
    local base_file="$1"
    if [ -f "$base_file" ]; then
        packages+=( $(< "$base_file") )
    else
        echo "Base packages file not found: $base_file"
        exit 1
    fi
}

# Read base packages from file
read_base_packages "~/bookworm-scripts/install_scripts/base_packages.txt"

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

mkdir -p ~/.config/awesome

cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
cp /usr/share/awesome/themes/default/theme.lua ~/.config/awesome/

# make sure lightdm is installed
bash ~/bookworm-scripts/install_scripts/lightdm.sh



