.PHONY: help
help:
	@echo "Comandos disponíveis:"
	@echo "  install         	- Executa a instalação dos pre-requisitos"
	@echo "  install-tools   	- Instala todas as ferramentas do Platform Engineer Toolbox"

.DEFAULT_GOAL := help

install:
	@echo ""
	@echo "Instalando os pre-requisitos"
	@sudo apt-get update
	@sudo apt install -y chrony nmap zsh ca-certificates curl git vim stow
	@echo ""
	@echo "Instalando o getnf"
	@curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash 
	@echo ""
	@echo export PATH=$PATH:$HOME/.local/bin
	@echo "Instalando as fontes"
	@getnf -i FiraCode
	@getnf -i FiraMono
	@getnf -i Meslo
	@echo ""
	@echo "Instalando o oh-my-zsh"
	@git clone https://github.com/robbyrussell/oh-my-zsh.git $(PWD)/.oh-my-zsh
	@echo ""
	@echo "Instalando o plugin zsh-syntax-highlighting"
	@git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $(PWD)/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
	@echo ""
	@echo "Instalando o plugin terragrunt"
	@git clone https://github.com/Cellophan/terragrunt.plugin.zsh.git $(PWD)/.oh-my-zsh/custom/plugins/terragrunt

install-tools:
	@echo "Instalando Platform Engineer Toolbox remotamente..."
	@curl -fsSL https://raw.githubusercontent.com/diogofrj/platform-toolbox/refs/heads/main/install-tools.sh | bash -s -- --all
	@echo "Instalação completa!"