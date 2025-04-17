# dotfiles
Dotfiles para o sistema operacional Linux.

## Estrutura 

```
.gitconfig #configuração do git
.zshrc #configuração do zsh
.vimrc #configuração do vim
.oh-my-zsh #configuração do oh-my-zsh
```

```bash
# Pre-requisitos

#pre-requisitos
apt install -y chrony nmap zsh ca-certificates curl git vim stow

# Instala o getnf
curl -fsSL https://raw.githubusercontent.com/getnf/getnf/main/install.sh | bash -s

# Instala as fontes
getnf -i FiraCode
getnf -i FiraMono
getnf -i Meslo

# Instala o oh-my-zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh

# Instala o plugin zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# Instala o plugin terragrunt
git clone https://github.com/Cellophan/terragrunt.plugin.zsh.git ~/.oh-my-zsh/custom/plugins/terragrunt
```



  Para usar o stow para criar links simbólicos para seus dotfiles, você pode seguir esses passos:

  1. Instale o stow se ele não estiver já instalado no seu sistema Linux.
    • Você pode usar um gerenciador de pacotes como apt ou yum para instalar. Exemplo: `sudo apt install stow` no Ubuntu.
  2. Crie um diretório para armazenar seus dotfiles, se você ainda não o fez.
    • Você pode escolher qualquer diretório no seu sistema. Exemplo: `mkdir ~/dotfiles`.
  3. Mova seus dotfiles para o diretório que você criou.
    • Exemplo: `mv ~/.bashrc ~/dotfiles`.
  4. Altere o seu diretório atual para o diretório dotfiles.
    • Exemplo: `cd ~/dotfiles`.
  5. Use o stow para criar os links simbólicos para seus dotfiles.
    • Execute `stow <directory>` para cada diretório contendo dotfiles que você deseja criar links simbólicos. Exemplo: `stow bash` para criar links simbólicos para o diretório bash.
    • Por padrão, o stow criará os links simbólicos no diretório pai do diretório atual (neste caso, o seu diretório home).



```bash
# Crie um diretório para armazenar seus dotfiles
git clone https://github.com/diogofrj/dotfiles.git ~/dotfiles
```