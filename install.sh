#!/bin/bash

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "Git is not installed. Attempting to install Git..."
    
    # Use apt to install git
    if command -v apt &> /dev/null; then
        sudo apt update
        sudo apt install git -y
    else
        echo "Cannot install Git automatically using apt. Please install Git manually and run this script again."
        exit 1
    fi
    
    # Check again if git is installed after attempting to install
    if ! command -v git &> /dev/null; then
        echo "Git installation failed. Please install Git manually and run this script again."
        exit 1
    fi
fi

echo "Git is installed. Continuing with the script..."
# Add further commands here after ensuring Git is installed

clear
echo "
 +-+-+-+-+-+-+-+-+-+-+-+-+-+ 
 |j|u|s|t|a|g|u|y|l|i|n|u|x| 
 +-+-+-+-+-+-+-+-+-+-+-+-+-+ 
 |c|u|s|t|o|m| |s|c|r|i|p|t| 
 +-+-+-+-+-+-+ +-+-+-+-+-+-+                                                                                                            
"

# Clone the repository into the home directory
git clone https://github.com/drewgrif/bookworm-scripts ~/bookworm-scripts
git clone https://github.com/drewgrif/jag_dots ~/bookworm-scripts/jag_dots

# Navigate into the cloned directory
cd ~/bookworm-scripts


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

# Prompt for AwesomeWM installation
prompt_installation_choice "AwesomeWM"
case "$choice" in
    1)
        awesome_choice="vanilla"
        ;;
    2)
        awesome_choice="custom"
        ;;
    *)
        echo "Skipping AwesomeWM installation..."
        ;;
esac

# Prompt for BSPWM installation
prompt_installation_choice "BSPWM"
case "$choice" in
    1)
        bspwm_choice="vanilla"
        ;;
    2)
        bspwm_choice="custom"
        ;;
    *)
        echo "Skipping BSPWM installation..."
        ;;
esac

# Prompt for DK Window Manager (dwm) installation
prompt_installation_choice "DK Window Manager"
case "$choice" in
    1)
        dk_choice="vanilla"
        ;;
    2)
        dk_choice="custom"
        ;;
    *)
        echo "Skipping DK Window Manager installation..."
        ;;
esac

# Prompt for DWM installation
prompt_installation_choice "DWM"
case "$choice" in
    1)
        dwm_choice="vanilla"
        ;;
    2)
        dwm_choice="custom"
        ;;
    *)
        echo "Skipping DWM installation..."
        ;;
esac

# Prompt for Fluxbox installation
prompt_installation_choice "Fluxbox"
case "$choice" in
    1)
        fluxbox_choice="vanilla"
        ;;
    2)
        fluxbox_choice="custom"
        ;;
    *)
        echo "Skipping Fluxbox installation..."
        ;;
esac

# Prompt for i3 installation
prompt_installation_choice "i3"
case "$choice" in
    1)
        i3_choice="vanilla"
        ;;
    2)
        i3_choice="custom"
        ;;
    *)
        echo "Skipping i3 installation..."
        ;;
esac

# Prompt for IceWM installation
prompt_installation_choice "IceWM"
case "$choice" in
    1)
        icewm_choice="vanilla"
        ;;
    2)
        icewm_choice="custom"
        ;;
    *)
        echo "Skipping IceWM installation..."
        ;;
esac

# Prompt for Openbox installation
prompt_installation_choice "Openbox"
case "$choice" in
    1)
        openbox_choice="vanilla"
        ;;
    2)
        openbox_choice="custom"
        ;;
    *)
        echo "Skipping Openbox installation..."
        ;;
esac

# Prompt for Qtile installation
prompt_installation_choice "Qtile"
case "$choice" in
    1)
        qtile_choice="vanilla"
        ;;
    2)
        qtile_choice="custom"
        ;;
    *)
        echo "Skipping Qtile installation..."
        ;;
esac

# Perform installations based on collected choices
echo "Installing selected window managers..."

if [ "$awesome_choice" == "vanilla" ]; then
    install_vanilla_awesome
elif [ "$awesome_choice" == "custom" ]; then
    install_custom_awesome
fi

if [ "$bspwm_choice" == "vanilla" ]; then
    install_vanilla_bspwm
elif [ "$bspwm_choice" == "custom" ]; then
    install_custom_bspwm
fi

if [ "$dk_choice" == "vanilla" ]; then
    install_vanilla_dk
elif [ "$dk_choice" == "custom" ]; then
    install_custom_dk
fi

if [ "$dwm_choice" == "vanilla" ]; then
    install_vanilla_dwm
elif [ "$dwm_choice" == "custom" ]; then
    install_custom_dwm
fi

if [ "$fluxbox_choice" == "vanilla" ]; then
    install_vanilla_fluxbox
elif [ "$fluxbox_choice" == "custom" ]; then
    install_custom_fluxbox
fi

if [ "$i3_choice" == "vanilla" ]; then
    install_vanilla_i3
elif [ "$i3_choice" == "custom" ]; then
    install_custom_i3
fi

if [ "$icewm_choice" == "vanilla" ]; then
    install_vanilla_icewm
elif [ "$icewm_choice" == "custom" ]; then
    install_custom_icewm
fi

if [ "$openbox_choice" == "vanilla" ]; then
    install_vanilla_openbox
elif [ "$openbox_choice" == "custom" ]; then
    install_custom_openbox
fi

if [ "$qtile_choice" == "vanilla" ]; then
    install_vanilla_qtile
elif [ "$qtile_choice" == "custom" ]; then
    install_custom_qtile
fi

echo "All installations completed."

# Run the extra packages
bash $HOME/bookworm-scripts/install_scripts/packages.sh

rm -rf ~/bookworm-scripts
