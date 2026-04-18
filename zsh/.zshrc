export PATH="$HOME/.local/bin:$PATH"
export SESSIONIZER_DIRS="$HOME/dev"
export SESSIONIZER_PROJECTS="$HOME/dotfiles"

# Homebrew setup - Must be first
if [[ -x /home/linuxbrew/.linuxbrew/bin/brew ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# Autosuggestions & Syntax Highlighting
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# fzf
source $(brew --prefix)/opt/fzf/shell/key-bindings.zsh
source $(brew --prefix)/opt/fzf/shell/completion.zsh
export FZF_DEFAULT_COMMAND='fd --type f --hidden'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_OPTS='--preview "bat --color=always --style=numbers {}" --preview-window=right:50%'


# Zoxide (z)
eval "$(zoxide init zsh)"

# Disable shell from setting terminal title (let tmux handle it)
DISABLE_AUTO_TITLE=true

# Aliases
alias dev="cd ~/Documents/dev"
alias ls='eza -lh --group-directories-first --icons=auto'
alias lsa='ls -a'
alias lt='eza --tree --level=2 --long --icons --git'
alias lta='lt -a'
alias ll='ls -a'

# Use zoxide for cd
function cd() {
  if [ $# -eq 0 ]; then
    builtin cd ~
  elif [ -d "$1" ]; then
    builtin cd "$1"
  else
    z "$@"
  fi
}

# Starship - always last
eval "$(starship init zsh)"

