#!/bin/bash

# xcode
xcode-select --install
xcode-select -p

bash app.sh

# 安裝並修改字型
brew tap caskroom/fonts
brew cask install font-hack-nerd-font
# Profiles > Text > Change Font

# setup git information
git config --global user.name "kwguo"
git config --global user.email shana0440@gmail.com

# setup neovim
mkdir ~/.config/nvim
echo "set runtimepath^=~/.vim runtimepath+=~/.vim/after" >> ~/.config/nvim/init.vim
echo "let &packpath = &runtimepath" >> ~/.config/nvim/init.vim
echo "source ~/.vimrc" >> ~/.config/nvim/init.vim

# alias
echo "alias vim='nvim'" >> ~/.bashrc
echo "alias glas='git log --all --graph --oneline --decorate'" >> ~/.bashrc

# setup vim
bash <(curl https://bit.ly/2Ojwlzi -L)
