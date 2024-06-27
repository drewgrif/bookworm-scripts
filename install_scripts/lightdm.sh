#!/bin/bash

# Function to check if a service is running
service_running() {
    sudo systemctl is-active "$1" >/dev/null 2>&1
}

# Check if GDM is installed and running
if service_running gdm; then
    echo "GDM is already installed and running."
    exit 0
fi

# Check if LightDM is installed and running
if service_running lightdm; then
    echo "LightDM is already installed and running."
    exit 0
fi

# Check if SDDM is installed and running
if service_running sddm; then
    echo "SDDM is already installed and running."
    exit 0
fi

# Check if MDM is installed and running
if service_running mdm; then
    echo "MDM is already installed and running."
    exit 0
fi

# Check if LXDM is installed and running
if service_running lxdm; then
    echo "LXDM is already installed and running."
    exit 0
fi

# If none of the above are installed, install LightDM
echo "No supported display manager found. Installing LightDM..."
sudo apt update
sudo apt install -y lightdm lightdm-gtk-greeter-settings

# Optionally, you may want to enable LightDM after installation
sudo systemctl enable lightdm

echo "LightDM has been installed and enabled."

