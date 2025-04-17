.PHONY: help
help:
	@echo "Comandos disponíveis:"
	@echo "  install         	- Executa a instalação dos dotfiles e ferramentas"

.DEFAULT_GOAL := help

install:
	@echo ""
	@echo "Instalando os pre-requisitos"
	@sudo apt-get update
	@sudo apt install -y chrony nmap zsh ca-certificates curl git vim stow
	@echo ""
	@echo "Instalando o getnf"
	@curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash -s
	@echo ""
	@echo export PATH=$$PATH:$$HOME/.local/bin
	@echo "Instalando as fontes"
	@getnf -i FiraCode
	@getnf -i FiraMono
	@getnf -i Meslo
	@fc-cache -f -v
	@echo ""
	@echo "Instalando o oh-my-zsh"
	@rm -rf $$HOME/.oh-my-zsh
	@git clone https://github.com/robbyrussell/oh-my-zsh.git $$HOME/.oh-my-zsh
	@echo ""
	@echo "Instalando o plugin zsh-syntax-highlighting"
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@echo ""
	@echo "Instalando o plugin terragrunt"
	@git clone https://github.com/Cellophan/terragrunt.plugin.zsh.git $$HOME/.oh-my-zsh/custom/plugins/terragrunt
	@echo ""
	@echo "Baixando o Script de Instalação do Platform Engineer Toolbox"
	@curl -fsSL https://raw.githubusercontent.com/diogofrj/platform-toolbox/refs/heads/main/install-tools.sh -o $$HOME/install-tools.sh && chmod +x $$HOME/install-tools.sh
	@echo ""
	@echo "Gerando alias com stow"
	@stow -v . && source ~/.zshrc

