#!/bin/bash

# Install fish shell
echo "Installing fish shell..."
sudo apt install fish -y
chsh -s /usr/bin/fish

# install Oh My Posh
echo "Installing Oh My Posh..."
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# install nerd fonts
echo "Installing Nerd Fonts..."
Create directory fonts inside $HOME/.local/share/
mkdir -p $HOME/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/FiraCode.zip -O $HOME/Downloads/firacode.zip
unzip $HOME/Downloads/firacode.zip -d $HOME/.local/share/fonts
Update fonts database
fc-cache -f -v

# install Oh My Posh themes
echo "Installing Oh My Posh themes..."
mkdir ~/.poshthemes
wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/themes.zip -O ~/.poshthemes/themes.zip
unzip ~/.poshthemes/themes.zip -d ~/.poshthemes
chmod u+rw ~/.poshthemes/*.json
rm ~/.poshthemes/themes.zip

cp config/config.fish $HOME/.config/fish/config.fish

echo "Installation is complete."