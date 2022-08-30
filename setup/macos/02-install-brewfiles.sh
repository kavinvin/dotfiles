#!/usr/bin/env bash

function install-bundle {
  BUNDLE_FILENAME="$1"
  BUNDLE_DIR="bundle"
  brew bundle --file $BUNDLE_DIR/$BUNDLE_FILENAME
}

install-bundle "Browser"
install-bundle "Essentials"
install-bundle "Development"
install-bundle "Fonts"
install-bundle "Productivity"
