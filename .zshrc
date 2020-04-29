export PATH=$HOME/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gallifrey"
plugins=(git git-extras svn sublime man)

# Preferred editor
export EDITOR="vim"

source $ZSH/oh-my-zsh.sh

# Git aliases
alias gst='git status --short'

# SVN aliases
alias sst="svn status | grep '^[^?].*$' --color=none"
alias sl='svn update'
alias slol='svn log -l 50 | perl -l40pe "s/^-+/\\n/" | less -S'
alias sc='svn commit'
