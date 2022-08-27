#!/usr/bin/env bash

# Install fzf useful key bindings and fuzzy completion
$(brew --prefix)/opt/fzf/install

# Install NvChad repo as neovim config
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
