# NeoVim config

A repo to manage my [lazyvim](http://www.lazyvim.org/)-based NeoVim and Terminal([iTerm2](https://iterm2.com/)) configs.

The main OS used is MacOS. Else, please find an appropriate terminal emulator and installation method.

## Prerequisites

1. [Neovim](https://neovim.io/)
2. [Node and npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm) (for certain plugins and LSPs)
3. supported [nerfont](https://www.nerdfonts.com/font-downloads) (current: CodeNewRoman)
4. [ripgrep](https://github.com/BurntSushi/ripgrep)

## How to

### Import configuration

```bash
cd $HOME
mkdir .config
cd .config
git clone https://github.com/bentohset/nvim-config.git .
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
