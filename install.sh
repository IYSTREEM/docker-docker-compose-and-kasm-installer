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
echo "██╗██╗   ██╗███████╗████████╗██████╗ ███████╗███████╗███╗   ███╗ "
echo "██║╚██╗ ██╔╝██╔════╝╚══██╔══╝██╔══██╗██╔════╝██╔════╝████╗ ████║"
echo "██║ ╚████╔╝ ███████╗   ██║   ██████╔╝█████╗  █████╗  ██╔████╔██║"
echo "██║  ╚██╔╝  ╚════██║   ██║   ██╔══██╗██╔══╝  ██╔══╝  ██║╚██╔╝██║ "
echo "██║   ██║   ███████║   ██║   ██║  ██║███████╗███████╗██║ ╚═╝ ██║"
echo "╚═╝   ╚═╝   ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚═╝" 


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
    sudo apt install fuse
    git clone https://github.com/dnburgess/dockerinstall.git
    cd dockerinstall
    chmod +x dockerinstall.sh
    sudo ./dockerinstall.sh
    sudo systemctl start docker
    sudo systemctl status docker
    cd /tmp
    curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz
    tar -xf kasm_release_1.16.0.f2d6e1.tar.gz
    sudo bash kasm_release/install.sh
elif [ "$choice" -eq 2 ]; then
    echo "Installing Kasm Workspace..."
    cd /tmp
    curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz
    tar -xf kasm_release_1.16.0.f2d6e1.tar.gz
    sudo systemctl start docker
    sudo systemctl status docker
    sudo bash kasm_release/install.sh
elif [ "$choice" -eq 3 ]; then
    echo "Running second series of commands..."
    # Add your second series of commands here
    git clone https://github.com/dnburgess/dockerinstall.git
    cd dockerinstall
    chmod +x dockerinstall.sh
    sudo ./dockerinstall.sh
    sudo systemctl start docker
    sudo systemctl status docker
else
    echo "Invalid choice. Please enter chose between 1-3."
fi

