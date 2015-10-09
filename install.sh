#!/usr/bin/env bash

#############################
# install.sh
# This script will create symlinks to the desired dotfiles in ~/dotfiles,
# backing up the old ones to ~/dotfiles_old
#############################

newHotness=~/dotfiles
oldBusted=~/dotfiles_old

# Files to be sym-linked
files=".tclshrc .tmux.conf .vimrc .vim"

echo "Install dotfiles"


printf "Create backup directory($oldBusted)..."
mkdir -p $oldBusted
echo "done"

echo "Create Symlinks..."
for file in $files; do
    echo "$file"

    printf "  Move ~/$file to $oldBusted ..."
    # remove the file if it's a symlink
    if [ -h ~/$file ]; then
        rm ~/$file
    else
        mv ~/$file $oldBusted 2>/dev/null
    fi
    echo "done"

    printf "  Create symlink to $newHotness/$file in ~/ ..."
    ln -s $newHotness/$file ~/$file
    echo "done"
done


echo "Install Git Submodules"
cd $newHotness
git submodule update --init --recursive
if [ "$?" -ne 0 ]; then
    echo "WARNING: Issues installing Git Submodules"
fi
echo "done"


echo "Install Powerline fonts (for use with vim-airline)"
printf "Move old ~/.fonts..."
mv ~/.fonts $oldBusted 2>/dev/null
echo "done"

printf "Running powerline-fonts install script..."
cd $newHotness/powerline-fonts
# installer to create new ~/.fonts directory
./install.sh
echo "done"


echo "All done!"

