# dotfiles

Personal configuration files.
Planning on fully switch to arch (btw), currently on Omarchy. Will udpates configs once fully commited.
Will keep the bare minimum for windows compatibility with WSL.

## Stack

- Neovim
- tmux
- ghostty
- starship
- aerospace
- zsh

## Setup

### 1. Install Homebrew

**macOS**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**WSL/Linux**
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sudo apt update && sudo apt install -y build-essential
```

### 2. Install dependencies
```bash
brew install neovim tmux stow node make git starship ripgrep fd fzf zoxide eza bat lazygit go tree-sitter-cli zsh-autosuggestions zsh-syntax-highlighting
```

### 3. Clone and stow
```bash
git clone git@github.com:DanieleRuffo93/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow nvim
stow tmux
stow zsh
stow bin
stow ghostty
stow starship
stow aerospace
```

### 3. Post-install

**Neovim** - open `nvim`, lazy.nvim bootstraps and installs all plugins automatically.

**tmux** - open `tmux`, TPM bootstraps automatically. Then press `<C-Space> I` to install plugins.

**ghostty** - opens directly in tmux.

**Zsh** - run `source ~/.zshrc` after stowing.

## Structure

Each top-level folder is a Stow package mirroring `$HOME`.

## Notes

- `tree-sitter-cli` is required by nvim-treesitter (main branch) to compile parsers from source.
- `go` is required by Mason to install gopls.
- On WSL, `build-essential` is required by Homebrew to compile packages.
- Aerospace and Ghostty are macOS/Linux only. WezTerm on Windows/WSL.
