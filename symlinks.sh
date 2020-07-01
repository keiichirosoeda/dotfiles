#!/bin/sh

echo "Creating symlinks ..."

# git
ln -fs ~/dotfiles/.gitignore $HOME/.gitignore
ln -fs ~/dotfiles/.gitconfig $HOME/.gitconfig

# fish config
ln -nfs ~/dotfiles/fish $HOME/.config/fish

# shell
ln -fs ~/dotfiles/etc/shells /etc/shells

# iTerm2
ln -fs ~/dotfiles/iterm2/com.googlecode.iterm2.plist $HOME/Library/Preferences/com.googlecode.iterm2.plist

# VS Code
ln -fs ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
