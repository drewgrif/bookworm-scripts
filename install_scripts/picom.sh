#!/bin/bash

# Check if picom is already installed
if picom --version >/dev/null 2>&1; then
    echo "Picom is already installed. Skipping installation."
    exit 0
fi

# If picom is not installed, proceed with installation steps here
echo "Picom is not installed. Installing..."

# Add your installation commands here
# For example, if installing via apt (for Debian-based systems):
# sudo apt update
# sudo apt install -y picom

# Or if installing via another method, adjust accordingly

sudo apt install -y libconfig-dev libdbus-1-dev libegl-dev libev-dev libgl-dev libepoxy-dev libpcre2-dev libpixman-1-dev libx11-xcb-dev libxcb1-dev libxcb-composite0-dev libxcb-damage0-dev libxcb-dpms0-dev libxcb-glx0-dev libxcb-image0-dev libxcb-present-dev libxcb-randr0-dev libxcb-render0-dev libxcb-render-util0-dev libxcb-shape0-dev libxcb-util-dev libxcb-xfixes0-dev libxext-dev meson ninja-build uthash-dev

git clone https://github.com/FT-Labs/picom ~/bookworm-scripts/picom
cd ~/bookworm-scripts/picom
meson setup --buildtype=release build
ninja -C build
sudo ninja -C build install

echo "Installation complete."
