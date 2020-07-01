#!/bin/sh

# Check for homebrew and install if needed
echo "Installing homebrew ..."

which -s brew
if [[ $? != 0 ]] ; then
  yes | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Homebrew already installed ..."
fi

brew update

# Install fish
brew install fish
brew install tree

# Git
brew install git

# peco
brew install peco

# fzf
brew install fzf

# Development
brew install yarn

# Other
brew install wget
brew install openssl

brew cleanup