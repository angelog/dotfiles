# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="juanghurtado"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/home/angelo/dev/nim/bin:/home/angelo/.nimble/bin"

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
export EDITOR='nano'

# Aliases
alias ll='ls -alF'
function lets {
	/home/angelo/letsencrypt/letsencrypt-auto certonly -a webroot --webroot-path /var/www_$1/ -d $1 -d www.$1 --server https://acme-v01.api.letsencrypt.org/directory
}
function sublets {
	/home/angelo/letsencrypt/letsencrypt-auto certonly -a webroot --webroot-path /var/www_$1/ -d $1 --server https://acme-v01.api.letsencrypt.org/directory
}
alias gst='git status --short'
alias sst='~/svn-color.py status'
alias slol='svn log -l 50 | perl -l40pe "s/^-+/\\n/" | less -S'
