# dotfiles

## Prerequisites

### Windows

```powershell
setx WSLENV LOCALAPPDATA/p

winget install -id XP9KHM4BK9FZ7Q -s msstore -e # Visual Studio Code
winget install --id Git.MinGit -s winget -e
winget install --id Neovim.Neovim -s winget -e
winget install --id twpayne.chezmoi -s winget -e

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
scoop install main/aria2
scoop install main/zenhan
```

### Ubuntu on WSL2

```shell
sudo apt install vim-gtk3

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv bash)"
brew analytics off
brew bundle --file "${HOME}/.config/homebrew/Brewfile"
```

## Initialization

```shell
chezmoi init mfjt --apply
```
