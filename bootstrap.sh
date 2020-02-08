#!/bin/bash

# xcode
xcode-select --install
xcode-select -p

# setup font
brew tap homebrew/cask-fonts
brew cask install font-jetbrains-mono

# install apps
bash app.sh

git clone https://github.com/shana0440/dotfiles.git ~/dotfiles
cd ~/dotfiles && bash install.sh && cd ~
