# Configuração básica do ZSH
export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(
    git
    zsh-syntax-highlighting
    docker 
    docker-compose 
    terraform 
    terragrunt
    )
source $ZSH/oh-my-zsh.sh

# Aliases básicos
alias ll='ls -la'
alias l='ls -l'
alias k='kubectl'

# Configuração do histórico
HISTSIZE=50000
SAVEHIST=50000
HISTFILE=~/.zsh_history
HIST_STAMPS="mm/dd/yyyy"

# Autocompletion
autoload -Uz compinit
compinit


if [ -f $HOME/.env ]; then
    source $HOME/.env
fi
if [ -f $HOME/.aliases ]; then
    source $HOME/.aliases
fi

export PATH=$PATH:$HOME/.local/bin