#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update
brew install android-sdk caskroom/cask/brew-cask curl go homebrew/dupes/grep openssh node openssl python vim wget zsh gcc
brew cask install alfred android-studio appcleaner amethyst dropbox google-chrome vivaldi flux iconjar little-snitch monodraw texpad papers manuscripts screenflow sketch-toolbox adobe-creative-cloud adobe-photoshop-cc adobe-illustrator-cc principle zeplin sublime-text teamspeak-client genymotion iterm2 java slack karabiner vlc 1password numi bartender staruml wireshark private-internet-access boom blockblock knockknock gpgtools helium kicad netspot owncloud xquartz rstudio
brew tap homebrew/science
brew install r
cd ~/Documents
git clone https://github.com/vork/dotfiles.git
cd dotfiles
git submodule init && git submodule update
go get -u github.com/nsf/gocode
sh install_hermit.sh

ln -s ${PWD}/.oh-my-zsh ~/.oh-my-zsh
ln -s ${PWD}/.vim ~/.vim
ln -s ${PWD}/.vimrc ~/.vimrc
ln -s ${PWD}/.zshrc ~/.zshrc
ln -s ${PWD}/.gobindings ~/.gobindings
