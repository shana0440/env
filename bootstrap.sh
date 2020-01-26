#!/bin/bash

# brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# xcode
xcode-select --install
xcode-select -p

# setup font
brew tap caskroom/fonts
brew cask install font-jetbrains-mono

# install apps
bash app.sh

git clone git@github.com:shana0440/dotfiles.git
stow alacritty fish git tmux vim yabai skhd
