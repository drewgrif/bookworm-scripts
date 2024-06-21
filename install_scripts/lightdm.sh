#!/bin/bash

# Check if LightDM is already installed and enabled
if systemctl is-active --quiet lightdm && systemctl is-enabled --quiet lightdm; then
    echo "LightDM is already installed and enabled. Skipping installation."
    exit 0
fi

# If LightDM is not installed or not enabled, proceed with installation and enabling
echo "LightDM is not installed or not enabled. Installing..."

# Install LightDM and lightdm-gtk-greeter-settings
sudo apt update
sudo apt install -y lightdm lightdm-gtk-greeter-settings

# Enable LightDM
sudo systemctl enable lightdm

echo "Installation and enabling complete."
