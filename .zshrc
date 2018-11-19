# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="muse"

# Uncomment the following line to disable bi-weekly auto-update checks.
#DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras sublime)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:${HOME}/apps"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Aliases
alias ll='ls -alF'
function lets {
	${HOME}/letsencrypt/letsencrypt-auto certonly -a webroot --webroot-path /var/www_$1/ -d $1 -d www.$1 --server https://acme-v01.api.letsencrypt.org/directory
}
function sublets {
	${HOME}/letsencrypt/letsencrypt-auto certonly -a webroot --webroot-path /var/www_$1/ -d $1 --server https://acme-v01.api.letsencrypt.org/directory
}

alias gst='git status --short'

alias sst="svn status | grep '^[^?].*$' --color=none"
alias sl='svn update'
alias slol='svn log -l 50 | perl -l40pe "s/^-+/\\n/" | less -S'
alias sc='svn commit'

