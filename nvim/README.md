# dotfiles

Personal configuration files for Neovim, tmux and whatever tool I will add to my personal stack. 

## Setup

### Dependencies

- [GNU Stow](https://www.gnu.org/software/stow/) — manages symlinks

### Install
```bash
git clone git@github.com:DanieleRuffo93/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow nvim
```

## Structure

Each top-level folder is a Stow package mirroring `$HOME`.
