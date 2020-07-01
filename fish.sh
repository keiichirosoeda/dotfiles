#!/bin/sh

# Check if fish is in list of accepted shells
if grep -Fxq "/usr/local/bin/fish" /etc/shells > /dev/null 2>&1; then
  echo "fish is already in the list of accepted shells ..."
else
  # If not found
  echo "Adding fish to list of accepted shells ..."
  sudo sh -c 'echo "/usr/local/bin/fish" >> /etc/shells'
fi

# Check if fish is default shell
if echo $SHELL | grep /bin/bash > /dev/null 2>&1; then
  echo "Setting fish as default shell ..."
  chsh -s /usr/local/bin/fish
else
  echo "fish is already the default shell ..."
fi

# Install fisher
if not functions -q fisher; then
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
  curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
  fish -c fisher
fi