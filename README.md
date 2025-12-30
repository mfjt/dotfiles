# dotfiles

## Prerequisites

### Windows

```powershell
winget install --id twpayne.chezmoi -s winget -e
```

### Ubuntu on WSL2

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
brew install chezmoi
```

## Initialization

```shell
chezmoi init mfjt --apply
```
