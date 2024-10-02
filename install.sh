#!/bin/bash

# Update and upgrade the system
sudo apt update
sudo apt upgrade -y
sudo apt-get update
sudo apt-get upgrade -y

# Install Git
sudo apt install curl -y

# Install tools that are needed to aviode fuse error
apt install kmod

# Clone the Docker install repository
git clone https://github.com/dnburgess/dockerinstall.git

# Navigate to the cloned directory
cd dockerinstall

# Make the install script executable and run it
chmod +x dockerinstall.sh
sudo ./dockerinstall.sh

# Navigate to /tmp directory
cd /tmp

# Download Kasm release
curl -O https://kasm-static-content.s3.amazonaws.com/kasm_release_1.16.0.f2d6e1.tar.gz

# Extract the tarball
tar -xf kasm_release_1.16.0.f2d6e1.tar.gz

# Run the Kasm install script
sudo bash kasm_release/install.sh
