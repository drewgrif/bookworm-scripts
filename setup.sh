#!/bin/bash

# Function to install vanilla AwesomeWM
install_vanilla_awesome() {
    echo "Installing vanilla AwesomeWM..."
    bash ~/bookworm-scripts/install_scripts/vanilla_awesome.sh
}

# Function to install customized AwesomeWM
install_custom_awesome() {
    echo "Installing JUSTAGUYLINUX customized AwesomeWM..."
    bash ~/bookworm-scripts/install_scripts/custom_awesome.sh
}

# Function to install vanilla BSPWM
install_vanilla_bspwm() {
    echo "Installing vanilla BSPWM..."
    bash ~/bookworm-scripts/install_scripts/vanilla_bspwm.sh
}

# Function to install customized BSPWM
install_custom_bspwm() {
    echo "Installing JUSTAGUYLINUX customized BSPWM..."
    bash ~/bookworm-scripts/install_scripts/custom_bspwm.sh
}

# Function to install vanilla DK Window Manager (dwm)
install_vanilla_dk() {
    echo "Installing vanilla DK Window Manager..."
    bash ~/bookworm-scripts/install_scripts/vanilla_dk.sh
}

# Function to install customized DK Window Manager (dwm)
install_custom_dk() {
    echo "Installing JUSTAGUYLINUX customized DK Window Manager..."
    bash ~/bookworm-scripts/install_scripts/custom_dk.sh
}

# Function to install vanilla DWM
install_vanilla_dwm() {
    echo "Installing vanilla DWM..."
    bash ~/bookworm-scripts/install_scripts/vanilla_dwm.sh
}

# Function to install customized DWM
install_custom_dwm() {
    echo "Installing JUSTAGUYLINUX customized DWM with picom animations..."
    bash ~/bookworm-scripts/install_scripts/custom_dwm.sh
}

# Function to install vanilla Fluxbox
install_vanilla_fluxbox() {
    echo "Installing vanilla Fluxbox..."
    bash ~/bookworm-scripts/install_scripts/vanilla_fluxbox.sh
}

# Function to install customized Fluxbox
install_custom_fluxbox() {
    echo "Installing JUSTAGUYLINUX customized Fluxbox..."
    bash ~/bookworm-scripts/install_scripts/custom_fluxbox.sh
}

# Function to install vanilla IceWM
install_vanilla_icewm() {
    echo "Installing vanilla IceWM..."
    bash ~/bookworm-scripts/install_scripts/vanilla_icewm.sh
}

# Function to install customized IceWM
install_custom_icewm() {
    echo "Installing JUSTAGUYLINUX customized IceWM..."
    bash ~/bookworm-scripts/install_scripts/custom_icewm.sh
}

# Function to install vanilla i3
install_vanilla_i3() {
    echo "Installing vanilla i3..."
    bash ~/bookworm-scripts/install_scripts/vanilla_i3.sh
}

# Function to install customized i3
install_custom_i3() {
    echo "Installing JUSTAGUYLINUX customized i3..."
    bash ~/bookworm-scripts/install_scripts/custom_i3.sh
}

# Function to install vanilla Openbox
install_vanilla_openbox() {
    echo "Installing vanilla Openbox..."
    bash ~/bookworm-scripts/install_scripts/vanilla_openbox.sh
}

# Function to install customized Openbox
install_custom_openbox() {
    echo "Installing JUSTAGUYLINUX customized Openbox..."
    bash ~/bookworm-scripts/install_scripts/custom_openbox.sh
}

# Function to install vanilla Qtile
install_vanilla_qtile() {
    echo "Installing vanilla Qtile..."
    bash ~/bookworm-scripts/install_scripts/vanilla_qtile.sh
}

# Function to install customized Qtile
install_custom_qtile() {
    echo "Installing JUSTAGUYLINUX customized Qtile..."
    bash ~/bookworm-scripts/install_scripts/custom_qtile.sh
}

# Function to prompt user for installation choice (vanilla or customized)
prompt_installation_choice() {
    local wm_name="$1"
    echo "$wm_name Installation"
    echo "1. Install $wm_name with no customization"
    echo "2. Install $wm_name with JUSTAGUYLINUX customized"
    echo "Or ENTER to skip"
    read -r choice
    echo "$choice"
}

# Main script starts here

# Function to handle installation based on user choice
install_window_manager() {
    local wm_name="$1"
    local vanilla_function="$2"
    local custom_function="$3"

    prompt_installation_choice "$wm_name"
    case "$choice" in
        1)
            $vanilla_function
            ;;
        2)
            $custom_function
            ;;
        *)
            echo "Skipping $wm_name installation..."
            ;;
    esac
}

# Perform installations
install_window_manager "AwesomeWM" install_vanilla_awesome install_custom_awesome
install_window_manager "BSPWM" install_vanilla_bspwm install_custom_bspwm
install_window_manager "DK Window Manager" install_vanilla_dk install_custom_dk
install_window_manager "DWM" install_vanilla_dwm install_custom_dwm
install_window_manager "Fluxbox" install_vanilla_fluxbox install_custom_fluxbox
install_window_manager "i3" install_vanilla_i3 install_custom_i3
install_window_manager "IceWM" install_vanilla_icewm install_custom_icewm
install_window_manager "Openbox" install_vanilla_openbox install_custom_openbox
install_window_manager "Qtile" install_vanilla_qtile install_custom_qtile

echo "All installations completed."
