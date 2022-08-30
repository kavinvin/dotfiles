#!/usr/bin/env bash

# Install fzf useful key bindings and fuzzy completion
if test -f $HOME/.config/fish/functions/fzf_key_bindings.fish
then
  echo "fzf is already installed"
else
  $(brew --prefix)/opt/fzf/install
fi

# Install latest node version
if command -v node &> /dev/null
then
  echo "Node is already installed."
else
  sudo n latest
fi
