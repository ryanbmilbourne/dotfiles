# dotfiles

My dotfiles.  Contains configs for tmux, tclsh and vim.  Vim dependencies are
added as submodules.

## Installation
This repo contains an install script to create symlinks to the dotfiles in your
home directory.  Any existing dot files will first be moved to ~/dotfiles_old,
so you do not have to worry about losing any existing settings.

```bash
cd ~/
git clone https://git.viasat.com/rmilbourne/dotfiles.git
cd dotfiles
./install.sh
```

