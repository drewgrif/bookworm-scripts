#!/bin/bash
clear


# Prompt user to confirm installation
read -p "Do you want to install printing services? (y/n): " choice

if [[ $choice =~ ^[Yy]$ ]]; then
    # Install packages
    sudo apt update
    sudo apt install -y cups system-config-printer simple-scan

    # Enable cups service
    sudo systemctl enable cups
    echo "Printing services installed and enabled successfully."
else
    echo "Installation aborted."
fi

