# dotfiles

Personal configuration files.

Current tech stack:
    - Nvim
    - Tmux

## Setup

### Dependencies

- [GNU Stow](https://www.gnu.org/software/stow/) — manages symlinks

### Install
```bash
git clone git@github.com:DanieleRuffo93/dotfiles.git ~/dotfiles
cd ~/dotfiles
stow nvim
stow tmux
```

## Structure

Each top-level folder is a Stow package mirroring `$HOME`.
