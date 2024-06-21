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

# Main script starts here

# Function to prompt user for installation choice (vanilla or customized)
prompt_installation_choice() {
    local wm_name="$1"
    echo "$wm_name Installation"
    echo "1. Install $wm_name with no customization"
    echo "2. Install $wm_name with JUSTAGUYLINUX customized"
    echo "Or ENTER to skip"
    read -r choice
}

# Variables to store user choices
awesome_choice=""
bspwm_choice=""
dk_choice=""
dwm_choice=""
fluxbox_choice=""
i3_choice=""
icewm_choice=""
openbox_choice=""
qtile_choice=""

# Prompt for AwesomeWM installation
prompt_installation_choice "AwesomeWM"
case "$choice" in
    1)
        install_vanilla_awesome
        ;;
    2)
        install_custom_awesome
        ;;
    *)
        echo "Skipping AwesomeWM installation..."
        ;;
esac

# Prompt for BSPWM installation
prompt_installation_choice "BSPWM"
case "$choice" in
    1)
        install_vanilla_bspwm
        ;;
    2)
        install_custom_bspwm
        ;;
    *)
        echo "Skipping BSPWM installation..."
        ;;
esac

# Prompt for DK Window Manager (dwm) installation
prompt_installation_choice "DK Window Manager"
case "$choice" in
    1)
        install_vanilla_dk
        ;;
    2)
        install_custom_dk
        ;;
    *)
        echo "Skipping DK Window Manager installation..."
        ;;
esac

# Prompt for DWM installation
prompt_installation_choice "DWM"
case "$choice" in
    1)
        install_vanilla_dwm
        ;;
    2)
        install_custom_dwm
        ;;
    *)
        echo "Skipping DWM installation..."
        ;;
esac

# Prompt for Fluxbox installation
prompt_installation_choice "Fluxbox"
case "$choice" in
    1)
        install_vanilla_fluxbox
        ;;
    2)
        install_custom_fluxbox
        ;;
    *)
        echo "Skipping Fluxbox installation..."
        ;;
esac

# Prompt for i3 installation
prompt_installation_choice "i3"
case "$choice" in
    1)
        install_vanilla_i3
        ;;
    2)
        install_custom_i3
        ;;
    *)
        echo "Skipping i3 installation..."
        ;;
esac

# Prompt for IceWM installation
prompt_installation_choice "IceWM"
case "$choice" in
    1)
        install_vanilla_icewm
        ;;
    2)
        install_custom_icewm
        ;;
    *)
        echo "Skipping IceWM installation..."
        ;;
esac

# Prompt for Openbox installation
prompt_installation_choice "Openbox"
case "$choice" in
    1)
        install_vanilla_openbox
        ;;
    2)
        install_custom_openbox
        ;;
    *)
        echo "Skipping Openbox installation..."
        ;;
esac

# Prompt for Qtile installation
prompt_installation_choice "Qtile"
case "$choice" in
    1)
        install_vanilla_qtile
        ;;
    2)
        install_custom_qtile
        ;;
    *)
        echo "Skipping Qtile installation..."
        ;;
esac

echo "All installations completed."
