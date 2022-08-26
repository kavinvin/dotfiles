#!/usr/bin/env bash

if ! command -v brew &> /dev/null
then
  echo "Installing homebrew."
  yes | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
  echo "Homebrew already installed."
else
  echo "Homebrew is installed."
fi

