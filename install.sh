#!/bin/bash


# ANSI escape code to reset text color

# Echo the ASCII art with blue color
echo "     "
echo "     "
echo "     "
echo "     "
echo "     "
echo "     "
echo "     "
echo "     "
echo "8888888 Y88b   d88P  .d8888b. 88888888888 8888888b.  8888888888 8888888888 888b     d888 "
echo "  888    Y88b d88P  d88P  Y88b    888     888   Y88b 888        888        8888b   d8888 "
echo "  888     Y88o88P   Y88b.         888     888    888 888        888        88888b.d88888 "
echo "  888      Y888P     Y888b.       888     888   d88P 8888888    8888888    888Y88888P888 "
echo "  888       888         "Y88b.    888     8888888P"  888        888        888 Y888P 888 "
echo "  888       888            888    888     888 T88b   888        888        888  Y8P  888 " 
echo "  888       888     Y88b  d88P    888     888  T88b  888        888        888       888 "
echo "8888888     888       Y8888P      888     888   T88b 8888888888 8888888888 888       888 "

echo "     "
echo "     "
echo "     "
echo "     "
echo "     "
echo "     "


#!/bin/bash

# Display options to the user
echo "Pick an option:"
echo "1) Install Docker and Docker Compose with Kasm Workspace (Full install)"
echo "2) Only Install Kasm Workspace"
echo "3) Only Install Docker and Docker Compose"

echo "     "
echo "     "
# Read user input
read -p "Enter your choice (1-3): " choice

# Check user input and run respective series of commands
if [ "$choice" -eq 1 ]; then
    echo "Installing Docker and Docker Compose with Kasm Workspace..."
    sudo apt update
    sudo apt upgrade -y
    sudo apt-get update
    sudo apt-get upgrade -y
    sudo apt install curl -y
    sudo apt install kmod
    git clone https://github.com/dnburgess/dockerinstall.git
    cd dockerinstall
    chmod +x dockerinstall.sh
    sudo ./dockerinstall.sh
    cd /tmp
    curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz
    tar -xf kasm_release_1.16.0.f2d6e1.tar.gz
    sudo bash kasm_release/install.sh
elif [ "$choice" -eq 2 ]; then
    echo "Installing Kasm Workspace..."
    cd /tmp
    curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz
    tar -xf kasm_release_1.16.0.f2d6e1.tar.gz
    sudo bash kasm_release/install.sh
elif [ "$choice" -eq 3 ]; then
    echo "Running second series of commands..."
    # Add your second series of commands here
    git clone https://github.com/dnburgess/dockerinstall.git
    cd dockerinstall
    chmod +x dockerinstall.sh
    sudo ./dockerinstall.sh
else
    echo "Invalid choice. Please enter chose between 1-3."
fi

