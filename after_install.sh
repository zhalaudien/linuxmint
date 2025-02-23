#!/bin/bash

# Update package list
echo "Updating package list..."
sudo apt update && sudo apt upgrade -y

# Install GitHub CLI and Git
echo "Installing GitHub CLI and Git..."
sudo apt install -y gh git 

# install codecs exstra
echo "Installing codecs exstra..."
sudo apt install mint-meta-codecs -y

# install app tambahan
echo "Installing app htop neofecth..."
sudo apt install -y htop neofecth

# install brave browser
echo "Installing Brave Browser..."
sudo apt install apt-transport-https curl -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y


echo "Installation is complete."
