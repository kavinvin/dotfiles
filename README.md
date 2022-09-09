# Kavin's dotfiles

## Installation

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply kavinvin
```

## Configure your local settings

Create or edit toml file at `~/.config/chezmoi/chezmoi.toml`

```toml
[data.git]
  username = "your username"
  email = "your email"
```

Apply configuration

```bash
$ chezmoi apply
```

Inspired by https://github.com/heypoom/dotfiles
