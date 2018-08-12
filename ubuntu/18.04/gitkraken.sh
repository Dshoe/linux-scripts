#!/bin/bash

# Ubuntu - Install GitKraken

# Exit immediately if a command exits with a non-zero status
set -e

# Update the user's cached credentials, authenticating the user if necessary
sudo -v

# Update Repositories
sudo apt update

# Fix Dependencies
sudo apt install -f

# Install Required Dependencies
sudo apt -y install gconf2 gvfs-bin libgnome-keyring0 python

# Download Package
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb

# Install Package
sudo dpkg -i gitkraken-amd64.deb

# Clean Up
rm gitkraken-amd64.deb
