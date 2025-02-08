# dotfiles
Dotfiles

## Estrutura do Projeto

```
coming soon...
```

  To use stow to create symbolic links for your dotfiles, you can follow these steps:

  1. Install stow if it's not already installed on your Linux system.
    • You can use a package manager like apt or yum to install it. For example, sudo apt install stow on Ubuntu.
  2. Create a directory to store your dotfiles, if you haven't already.
    • You can choose any directory on your system. For example, mkdir ~/dotfiles.
  3. Move your dotfiles into the directory you created.
    • For example, mv ~/.bashrc ~/dotfiles.
  4. Change your current directory to the dotfiles directory.
    • For example, cd ~/dotfiles.
  5. Use stow to create the symbolic links for your dotfiles.
    • Run stow <directory> for each directory containing dotfiles that you want to create symbolic links for. For example, stow bash to create symbolic links for the bash directory.
    • By default, stow will create the symbolic links in the parent directory of the current directory (in this case, your home directory).
