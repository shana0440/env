#!/bin/bash

source setup.sh

# xcode
xcode-select --install
xcode-select -p

source app.sh

# 安裝並修改字型
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
# Profiles > Text > Change Font

# setup git information
git config --global user.name "kwguo"
git config --global user.email shana0440@gmail.com

# setup vim
bash <(curl https://bit.ly/2Ojwlzi -L)
