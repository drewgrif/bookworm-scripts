#!/bin/bash

echo "Would you like to install printing services? (y/n)"
read response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Installing printing services..."
		sudo apt install -y cups system-config-printer simple-scan
		sudo systemctl enable cups.service
    echo "Printing services installed."
elif [[ "$response" =~ ^[Nn]$ ]]; then
    echo "Printing services will not be installed."
else
    echo "Invalid input. Please enter 'y' or 'n'."
fi
