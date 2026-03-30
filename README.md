# dotfiles

Personal configuration files.

## Stack

- Neovim
- tmux

## Setup

### 1. Install dependencies
```bash
brew install neovim tmux stow node make
```

### 2. Clone and stow
```bash
git clone git@github.com:DanieleRuffo93/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow nvim
stow tmux
```

### 3. Post-install

**Neovim** — open `nvim`, lazy.nvim bootstraps and installs all plugins automatically.

**tmux** — open `tmux`, TPM bootstraps automatically. Then press `<C-Space> I` to install plugins.

## Structure

Each top-level folder is a Stow package mirroring `$HOME`.
