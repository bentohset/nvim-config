# NeoVim config

A repo to manage my NeoVim and Terminal configs
Using lazyvim and iterm2

## Prerequisites

1. nvim
2. Node and npm (for certain plugins and LSPs)
3. supported nerdfont (current: CodeNewRoman)

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
