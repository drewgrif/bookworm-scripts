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
    echo "Installing vanilla DK Window Manager (dwm)..."
    bash ~/bookworm-scripts/install_scripts/vanilla_dk.sh
}

# Function to install customized DK Window Manager (dwm)
install_custom_dk() {
    echo "Installing JUSTAGUYLINUX customized DK Window Manager (dwm)..."
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

# Array to store user choices
declare -A choices

# Prompt for each window manager and store choices in the array
prompt_and_store_choice() {
    local wm_name="$1"
    prompt_installation_choice "$wm_name"
    choices["$wm_name"]=$choice
}

# Prompt for AwesomeWM installation
prompt_and_store_choice "AwesomeWM"

# Prompt for BSPWM installation
prompt_and_store_choice "BSPWM"

# Prompt for DK Window Manager (dwm) installation
prompt_and_store_choice "DK Window Manager"

# Prompt for DWM installation
prompt_and_store_choice "DWM"

# Prompt for Fluxbox installation
prompt_and_store_choice "Fluxbox"

# Prompt for i3 installation
prompt_and_store_choice "i3"

# Prompt for IceWM installation
prompt_and_store_choice "IceWM"

# Prompt for Openbox installation
prompt_and_store_choice "Openbox"

# Prompt for Qtile installation
prompt_and_store_choice "Qtile"

# Install based on user choices stored in the array
for wm_name in "${!choices[@]}"; do
    case "${choices[$wm_name]}" in
        1)
            case "$wm_name" in
                "AwesomeWM")
                    install_vanilla_awesome
                    ;;
                "BSPWM")
                    install_vanilla_bspwm
                    ;;
                "DK Window Manager")
                    install_vanilla_dk
                    ;;
                "DWM")
                    install_vanilla_dwm
                    ;;
                "Fluxbox")
                    install_vanilla_fluxbox
                    ;;
                "IceWM")
                    install_vanilla_icewm
                    ;;
                "i3")
                    install_vanilla_i3
                    ;;
                "Openbox")
                    install_vanilla_openbox
                    ;;
                "Qtile")
                    install_vanilla_qtile
                    ;;
                *)
                    echo "Installation function not defined for $wm_name"
                    ;;
            esac
            ;;
        2)
            case "$wm_name" in
                "AwesomeWM")
                    install_custom_awesome
                    ;;
                "BSPWM")
                    install_custom_bspwm
                    ;;
                "DK Window Manager")
                    install_custom_dk
                    ;;
                "DWM")
                    install_custom_dwm
                    ;;
                "Fluxbox")
                    install_custom_fluxbox
                    ;;
                "IceWM")
                    install_custom_icewm
                    ;;
                "i3")
                    install_custom_i3
                    ;;
                "Openbox")
                    install_custom_openbox
                    ;;
                "Qtile")
                    install_custom_qtile
                    ;;
                *)
                    echo "Installation function not defined for $wm_name"
                    ;;
            esac
            ;;
        *)
            echo "Skipping $wm_name installation..."
            ;;
    esac
done

echo "All installations completed."
