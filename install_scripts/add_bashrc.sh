#!/bin/bash

# Function to prompt if the user wants to copy the justaguylinux .bashrc file
prompt_copy_bashrc() {
    echo "Do you want to copy the justaguylinux .bashrc file?"
    echo "1. Yes"
    echo "2. No"
    read -r copy_choice

    case "$copy_choice" in
        1)
            echo "Copying .bashrc file..."
            cp ~/bookworm-scripts/jag_dots/.bashrc ~/.bashrc
            ;;
        2)
            echo "Skipping .bashrc file copy."
            ;;
        *)
            echo "Invalid choice. Skipping .bashrc file copy."
            ;;
    esac
    
    # Adding a couple of line returns
    echo -e "\n\n"
}
