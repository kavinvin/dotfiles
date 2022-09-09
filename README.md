# Kavin's dotfiles

## Installation

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply kavinvin
```

## Configure your local settings

```toml
# ~/.config/chezmoi/chezmoi.toml
[data.git]
  username = "your username"
  email = "your email"
```

Inspired by https://github.com/heypoom/dotfiles
