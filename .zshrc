# Configuração básica do ZSH
export ZSH="/home/$USER/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git
    aliases
    alias-finder
    ansible
    aws
    docker
    docker-compose
    helm
    kubectl
    azure
    chezmoi
    colored-man-pages
    colorize
    command-not-found
    common-aliases
    eza
    gitfast
    github
    gitignore
    history
    history-substring-search
    kubectx
    podman
    pre-commit
    ssh
    ssh-agent
    terraform
    tldr
    zsh-autopair
    zsh-autosuggestions
    zsh-completions
    zsh-navigation-tools
    fig
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


# Oh-My-Posh
eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/cloud-context.omp.json)"
# eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/json.omp.json)"
# eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/night-owl.omp.json)"
alias posh_azure='eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/cloud-native-azure.omp.json)"'
alias posh_night-owl='eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/night-owl.omp.json)"'
alias posh_json='eval "$(oh-my-posh --init --shell zsh --config ~/.cache/oh-my-posh/themes/json.omp.json)"'

