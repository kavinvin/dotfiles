#!/usr/bin/env bash

# Set default languages to English, Thai, Japanese
defaults write -g AppleLanguages -array en th ja

# Disable show recents section in the dock
defaults write com.apple.dock "show-recents" -bool false
