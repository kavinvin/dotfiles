#!/usr/bin/env bash

function in_file {
  PATTERN="$1"
  FILEPATH="$2"
  return $(grep -Fxq "$PATTERN" $FILEPATH)
}

if in_file "$(which fish)" /etc/shells
then
  echo "$(which fish) is already added to default shells"
else
  sudo sh -c "echo $(which fish) >> /etc/shells"
fi
chsh -s "$(which fish)"

fish -c "curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher"

fish -c "fisher install catppuccin/fish"
fish -c "fisher install jhillyerd/plugin-git"
fish -c "fisher install jethrokuan/z"
fish -c "fisher install franciscolourenco/done"
fish -c "fisher install jorgebucaran/spark.fish"

fish -c "set -U fish_greeting ''"
