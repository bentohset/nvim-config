# NeoVim config

A repo to manage my [lazyvim](http://www.lazyvim.org/)-based NeoVim and terminal configs

The main OS used is MacOS. Else, please find an appropriate terminal emulator and installation method. Linux should be supported but untested.

## Prerequisites

- homebrew
- kitty
- neovim
- nerdfont (JetBrainsMono)
- ripgrep, fzf
- lazygit

## How to

### Installation

```bash
# initialize git .config
cd $HOME
mkdir .config
cd .config
git clone https://github.com/bentohset/nvim-config.git .

# install homebrew (for fresh install)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install dependencies
brew bundle --file=~/.config/brew/Brewfile
```

### Push update to remote

```bash
cd $HOME/.config
git add .
git commit -m "message"
git push -u origin main
```

### Pull updates

```bash
cd $HOME/.config
git pull
```
