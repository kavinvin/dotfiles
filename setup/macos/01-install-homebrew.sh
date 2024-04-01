#!/usr/bin/env bash

# Install Homebrew
if command -v /opt/homebrew/bin/brew &> /dev/null
then
  echo "Homebrew is already installed."
else
  echo "Installing homebrew."
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo "Homebrew is installed."
fi
