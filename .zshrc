export PATH=$HOME/bin:$HOME/go/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallifrey"
plugins=(git git-extras sublime man)

# Preferred editor
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh

# Git aliases
alias gst='git status --short'

# Docker aliases
alias dps='docker ps --format "{{\"\033[90m\"}} {{.ID}} {{\"\033[31m\"}}{{.Names}}{{\"\033[0m\"}} ({{.Status}}) {{\"\033[90m\"}}{{.Ports}}"'
alias dc='docker compose'
alias dcl='docker compose logs --since 1m -f'
alias dcl5='docker compose logs --since 5m'
