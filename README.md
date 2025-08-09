# dotfiles

## Prerequisites

### Windows
```powershell
setx WSLENV LOCALAPPDATA/p

winget install --id Git.MinGit -e
winget install --id twpayne.chezmoi -e

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install main/zenhan
```

### Ubuntu on WSL2

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
brew analytics off
brew install chezmoi
```

## Initialization

```shell
chezmoi init mfjt --apply
```
