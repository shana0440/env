#!bin/bash

app_name="env"
tmp_dir="$HOME/.for_$app_name"

init() {
	sudo easy_install pip
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	brew update
	brew install git
}

download_repo() {
	repo=$1
	path=$2
	git clone $repo $path
}

install() {
	path=$1
	bash $path/bootstrap.sh
}

clean() {
	path=$1
	rm -rf $path
}

init
download_repo https://github.com/shana0440/env.git $tmp_dir
install $tmp_dir
clean $tmp_dir
