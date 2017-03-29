# dotfiles

My dotfiles.  Contains configs for tmux, tclsh and vim.  Vim dependencies are
added as [submodules][0].

## Installation
This repo contains an install script to create symlinks to the dotfiles in your
home directory.  Any existing dot files will first be moved to `~/dotfiles_old`,
so you do not have to worry about losing any existing settings.

```bash
cd ~/
git clone git@git.viasat.com:rmilbourne/dotfiles.git
cd dotfiles
./install.sh
```


## Dependencies

### Eslint

Note that my `.vimrc` sets [Syntastic's][1] default javascript scanner to [eslint][2].
In order for Syntastic to lint on javascript files, eslint will have to be
installed globally:

```bash
npm install -g eslint
```

### Jsonlint

Same deal, but with jsonlint:

```bash
npm install -g jsonlint
```

[0]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
[1]: https://github.com/scrooloose/syntastic
[2]: http://eslint.org/ 

