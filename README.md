# Kavin's dotfiles

## Usage

### Installation

```bash
sh -c "$(curl -fsLS git.io/chezmoi)" -- init --apply kavinvin
```

### Configure your local settings

Create or edit toml file at `~/.config/chezmoi/chezmoi.toml`

```toml
[data.git]
  username = "your username"
  email = "your email"
  signingKey = "your gpg key"
  use1PasswordGpg = false
```

Apply changes

```bash
$ chezmoi apply
```

### Pull and apply dotfiles change from this repo

```bash
$ chezmoi update
```

Inspired by https://github.com/heypoom/dotfiles
