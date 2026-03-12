#!/usr/bin/env bash

export PATH="$PATH:/opt/homebrew/bin"

# Install fzf useful key bindings and fuzzy completion
if test -f $HOME/.config/fish/functions/fzf_key_bindings.fish
then
  echo "fzf is already installed"
else
  $(brew --prefix)/opt/fzf/install
fi


$(brew --prefix coursier)/bin/coursier setup
