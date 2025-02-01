# NeoVim config

A repo to manage my [lazyvim](http://www.lazyvim.org/)-based NeoVim and terminal configs

The main OS used is MacOS. Else, please find an appropriate terminal emulator and installation method. Linux should be supported but untested.

## Prerequisites

- homebrew
- kitty
- neovim
- node and npm (for certain plugins)
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

# install kitty from https://sw.kovidgoyal.net/kitty/binary/
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

# install a nerdfont from https://www.nerdfonts.com/font-downloads
curl -L -o ~/Library/Fonts/JetBrainsMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/JetBrainsMono.zip \
&& cd ~/Library/Fonts/ \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip

# install neovim
brew install neovim

# install ripgrep and lazygit
brew install ripgrep lazygit fzf

# install nvm, node and npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
source ~/.zshrc
nvm install 23
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
