#!/usr/bin/env bash

# Set fish as default shell
if grep -Fxq "$(which fish)" /etc/shells
then
  echo "$(which fish) is already added to default shells."
else
  sudo sh -c "echo $(which fish) >> /etc/shells"
  chsh -s "$(which fish)"
fi

# Install Fisher
# https://github.com/jorgebucaran/fisher#installation
if test -f ~/.config/fish/functions/fisher.fish
then
  echo "Fisher is already installed."
else
  fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fi

# Install Fisher packages
fish -c "fisher install catppuccin/fish"
fish -c "fisher install jhillyerd/plugin-git"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install franciscolourenco/done"
fish -c "fisher install jorgebucaran/spark.fish"

# Disable fish greeting message
fish -c "set -U fish_greeting ''"
