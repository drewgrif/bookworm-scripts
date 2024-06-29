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



# Clone the repository into the home directory
git clone https://github.com/drewgrif/bookworm-scripts ~/bookworm-scripts
git clone https://github.com/drewgrif/jag_dots ~/bookworm-scripts/jag_dots

# Navigate into the cloned directory
cd ~/bookworm-scripts

clear
echo "
 +-+-+-+-+-+-+-+-+-+-+-+-+-+ 
 |j|u|s|t|a|g|u|y|l|i|n|u|x| 
 +-+-+-+-+-+-+-+-+-+-+-+-+-+ 
 |c|u|s|t|o|m| |s|c|r|i|p|t| 
 +-+-+-+-+-+-+ +-+-+-+-+-+-+                                                                                                            
"

# Make setup.sh executable (if needed, though it's typically already executable)
# chmod +x setup.sh packages.sh

# Run the setup script
bash ~/bookworm-scripts/install_scripts/setup.sh

clear

# Run the extra packages
bash ~/bookworm-scripts/install_scripts/packages.sh

clear

echo "Make sure a Display Manager is installed"

# make sure lightdm is installed
bash ~/bookworm-scripts/install_scripts/lightdm.sh

clear

# add bashrc question
bash ~/bookworm-scripts/install_scripts/add_bashrc.sh


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"

