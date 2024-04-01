#!/usr/bin/env bash

export PATH="$PATH:/opt/homebrew/opt/"

if [ "$CI" != "true" ]; then
  mas install 747648890 # Telegram
  mas install 803453959 # Slack
  mas install 1569813296 # 1Password for Safari
  mas install 1482454543 # Twitter
  mas install 1480068668 # Messenger
fi
