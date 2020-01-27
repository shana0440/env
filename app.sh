# homebrew & cask
brew install caskroom/cask/brew-cask

# git
brew cask install fork

# editor
brew cask install typora visual-studio-code notion
brew install vim@8.2

# browser
brew cask install firefox google-chrome

# http
brew install jq
brew cask install postman

# devops tools
brew install ansible

# development tools
brew install fzf the_silver_searcher tmux watch fd stow

# terminal
brew cask install alacritty

# network
brew install nmap
brew cask install wireshark

# cloud storage
brew cask install dropbox

# virtualize
brew cask install vmware-fusion vagrant docker

# terminal record
brew install asciinema

# window manager
brew tap koekeishiya/formulae
brew install yabai skhd
sudo yabai --install-sa

# fish
brew install fish
echo `which fish` | sudo tee -a /etc/shells
chsh -s `which fish`

# asdf
brew install \
  coreutils automake autoconf openssl \
  libyaml readline libxslt libtool unixodbc \
  unzip curl
brew install asdf
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
asdf plugin-add python
asdf install python 3.7.4
asdf global python 3.7.4
asdf install ruby 2.7.0
asdf global ruby 2.7.0

echo "source "$(brew --prefix asdf)"/asdf.fish" >> ~/.config/fish/config.fish
