#!/usr/bin/env bash
clear
# Function to install vanilla awesomewm
install_vanilla_awesome() {
	
	# List of packages to check/install
packages=("xorg" "xserver-xorg" "xorg-dev" "xbacklight" "xbindkeys" "xvkbd" "xinput" "awesome" "awesome-extra" "awesome-doc")

# Function to check if a package is installed
package_installed() {
    dpkg -l "$1" &> /dev/null
}

# Iterate over packages
for package in "${packages[@]}"; do
    if package_installed "$package"; then
        echo "$package is already installed."
    else
        echo "$package is not installed. Installing..."
        sudo apt install -y "$package"
        if [ $? -eq 0 ]; then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi
done

# Create directories and add config files
mkdir -p ~/.config/awesome
cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
cp /usr/share/awesome/themes/default/theme.lua ~/.config/awesome/

}

# Function to install custom awesomewm
install_custom_awesome() {
	
	# List of packages to check/install
packages=("xorg" "xserver-xorg" "xorg-dev" "xbacklight" "xbindkeys" "xvkbd" "xinput" "awesome" "awesome-extra" "awesome-doc")

# Function to check if a package is installed
package_installed() {
    dpkg -l "$1" &> /dev/null
}

# Iterate over packages
for package in "${packages[@]}"; do
    if package_installed "$package"; then
        echo "$package is already installed."
    else
        echo "$package is not installed. Installing..."
        sudo apt install -y "$package"
        if [ $? -eq 0 ]; then
            echo "$package installed successfully."
        else
            echo "Failed to install $package."
        fi
    fi
done

# Create directories and add config files
mkdir -p ~/.config/awesome

# git to temp directory
temp_dir=$(mktemp -d)

# Change directory to the temporary directory
cd "$temp_dir"

    git clone https://github.com/drewgrif/jag_dots
		\cp -r ~/"$temp_dir"/jag_dots/bin/ ~
		chmod +x ~/bin/*
		\cp -r ~/"$temp_dir"/jag_dots/.config/backgrounds/ ~/.config/
		\cp -r ~/"$temp_dir"/jag_dots/.config/dunst/ ~/.config/
		\cp -r ~/"$temp_dir"/jag_dots/.config/picom/ ~/.config/
		\cp -r ~/"$temp_dir"/jag_dots/.config/rofi/ ~/.config/

		# moving personal awesomewm configs
		\cp -r ~/"$temp_dir"/jag_dots/.config/awesome/ ~/.config/


# Clean up: remove the temporary directory
rm -rf "$temp_dir"


}

# Prompt user with the question
read -p "Do you want to install awesomewm with JUSTAGUYLINUX customization (y) OR NO CUSTOMIZATION (n)?  " choice

# Install based on user choice
case "$choice" in
    n)
        install_vanilla_awesome
        ;;
    y)
        install_custom_awesome
        ;;
    *)
        echo "Invalid choice. Exiting..."
        ;;
esac
