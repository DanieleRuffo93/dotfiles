# dotfiles

Personal configuration files.
Planning on fully switch to arch (btw), currently on Omarchy. Will udpates configs once fully commited.

## Stack

- Neovim
- tmux
- ghostty
- starship
- aerospace

## Setup

### 1. Install dependencies
```bash
brew install neovim tmux stow node make starship ripgrep fd fzf zoxide
```

### 2. Clone and stow
```bash
git clone git@github.com:DanieleRuffo93/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow nvim
stow tmux
stow ghostty
stow starship
stow aerospace
```

### 3. Post-install

**Neovim** - open `nvim`, lazy.nvim bootstraps and installs all plugins automatically.

**tmux** - open `tmux`, TPM bootstraps automatically. Then press `<C-Space> I` to install plugins.

**ghostty** - opens directly in tmux.

## Structure

Each top-level folder is a Stow package mirroring `$HOME`.
