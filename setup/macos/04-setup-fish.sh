#!/usr/bin/env bash

export PATH="$PATH:/opt/homebrew/bin"

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
if test -f $HOME/.config/fish/functions/fisher.fish
then
  echo "Fisher is already installed."
else
  fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"
fi

# Install Fisher packages
function fisher-install {
  PACKAGE="$1"
  if test -f $HOME/.config/fish/fish_plugins && grep -Fxq $PACKAGE $HOME/.config/fish/fish_plugins
  then
    echo "Fisher package $PACKAGE is already installed."
  else
    fish -c "fisher install $PACKAGE"
  fi
}
fisher-install catppuccin/fish
fisher-install jhillyerd/plugin-git
fisher-install jethrokuan/z
fisher-install franciscolourenco/done
fisher-install jorgebucaran/spark.fish

# Disable fish greeting message
fish -c "set -U fish_greeting ''"
