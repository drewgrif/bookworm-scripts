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

    # Call the appropriate installation function based on user choice
    case "$choice" in
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
                # Add cases for other window managers as needed
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
                # Add cases for other window managers as needed
                *)
                    echo "Installation function not defined for $wm_name"
                    ;;
            esac
            ;;
        *)
            echo "Skipping $wm_name installation..."
            ;;
    esac

    # Insert blank lines after skipping installation
    echo -e "\n\n"
}

# Main script starts here

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
# Add more variables for other window managers as needed

# Prompt for AwesomeWM installation
prompt_installation_choice "AwesomeWM"

# Prompt for BSPWM installation
prompt_installation_choice "BSPWM"

# Prompt for DK Window Manager (dwm) installation
prompt_installation_choice "DK Window Manager"

# Prompt for DWM installation
prompt_installation_choice "DWM"

# Prompt for Fluxbox installation
prompt_installation_choice "Fluxbox"

# Prompt for i3 installation
prompt_installation_choice "i3"

# Prompt for IceWM installation
prompt_installation_choice "IceWM"

# Prompt for Openbox installation
prompt_installation_choice "Openbox"

# Prompt for Qtile installation
prompt_installation_choice "Qtile"

# Add prompts for other window managers as needed...

echo "All installations completed."
