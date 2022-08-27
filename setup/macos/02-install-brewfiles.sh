#!/usr/bin/env bash

function install-bundle {
  BUNDLE_DIR="bundle"
  brew bundle --file "$BUNDLE_DIR/$1"
}

install-bundle "Browser"
install-bundle "Essentials"
install-bundle "Development"
install-bundle "Fonts"
install-bundle "Productivity"
