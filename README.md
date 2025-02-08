# dotfiles
Dotfiles

## Estrutura do Projeto

```
coming soon...
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
