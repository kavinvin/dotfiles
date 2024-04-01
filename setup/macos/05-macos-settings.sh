#!/usr/bin/env bash

# Set default languages to English, Thai, Japanese
defaults write -g AppleLanguages -array en th ja

# Disable show recents section in the dock
defaults write com.apple.dock "show-recents" -bool false

# Specify iTerm2 preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.config/iterm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
