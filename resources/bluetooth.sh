#!/bin/bash
clear

# Prompt user to confirm installation
read -p "Do you want to install bluetooth services? (y/n): " choice

if [[ $choice =~ ^[Yy]$ ]]; then
    # Install packages
    sudo apt update
    sudo apt install -y bluez blueman

    # Enable cups service
    sudo systemctl enable bluetooth
    echo "Bluetooth services installed and enabled successfully."
else
    echo "Installation aborted."
fi
