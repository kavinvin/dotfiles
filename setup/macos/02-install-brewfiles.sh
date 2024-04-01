#!/usr/bin/env bash

function install-bundle {
  BUNDLE_FILENAME="$1"
  BUNDLE_DIR="bundle"
  /opt/homebrew/bin/brew bundle --file $BUNDLE_DIR/$BUNDLE_FILENAME --no-upgrade
}

cd "$(dirname "${BASH_SOURCE[0]}")"

install-bundle "Browser"
install-bundle "Essentials"
install-bundle "Development"
install-bundle "Fonts"
install-bundle "Productivity"
