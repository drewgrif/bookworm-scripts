#!/bin/bash

# Function to check if a service is running
service_running() {
    sudo systemctl is-active "$1" >/dev/null 2>&1
}

# Check if GDM is installed and running
check_gdm() {
    service_running gdm
}

# Check if SDDM is installed and running
check_sddm() {
    service_running sddm
}

# Check if LightDM is installed and running
check_lightdm() {
    service_running lightdm
}

# Check if LXDM is installed and running
check_lxdm() {
    service_running lxdm
}

# Check if LY is installed and running
check_ly() {
    service_running ly
}

# Function to install and enable LightDM
install_lightdm() {
    echo "Installing LightDM (recommended)..."
    sudo apt update
    sudo apt install -y lightdm lightdm-gtk-greeter-settings
    sudo systemctl enable lightdm
    echo "LightDM has been installed and enabled."
}

# Function to install and enable GDM3
install_gdm() {
    echo "Installing minimal GDM3..."
    sudo apt update
    sudo apt install --no-install-recommends gdm3
    sudo systemctl enable gdm3
    echo "GDM3 has been installed and enabled."
}

# Function to install and enable SDDM
install_sddm() {
    echo "Installing minimal SDDM..."
    sudo apt update
    sudo apt install --no-install-recommends sddm
    sudo systemctl enable sddm
    echo "SDDM has been installed and enabled."
}

# Function to install and enable LXDM
install_lxdm() {
    echo "Installing LXDM..."
    sudo apt update
    sudo apt install --no-install-recommends lxdm
    sudo systemctl enable lxdm
    echo "LXDM has been installed and enabled."
}

# Check which display managers are installed and running
if check_lightdm; then
    echo "LightDM is already installed and running (recommended)."
    exit 0
elif check_gdm; then
    echo "GDM3 is already installed and running."
    exit 0
elif check_sddm; then
    echo "SDDM is already installed and running."
    exit 0
elif check_lxdm; then
    echo "LXDM is already installed and running."
    exit 0
elif check_ly; then
    echo "Ly is already installed and running."
    exit 0
fi

# If none of the above are installed, offer a choice to the user
echo "No supported display manager found."

# Menu for user choice
echo "Choose an option (or '0' to skip):"
echo "1. Install LightDM (recommended)"
echo "2. Install minimal GDM3"
echo "3. Install minimal SDDM"
echo "4. Install LXDM"

read -p "Enter your choice (0/1/2/3/4): " choice

case $choice in
    0)
        echo "Skipping installation."
        exit 0
        ;;
    1)
        install_lightdm
        ;;
    2)
        install_gdm
        ;;
    3)
        install_sddm
        ;;
    4)
        install_lxdm
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
