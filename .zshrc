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
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Autocompletion
autoload -Uz compinit
compinit


source $HOME/.env
export PATH=$PATH:$HOME/.local/bin