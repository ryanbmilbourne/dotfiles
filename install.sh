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

echo "Create backup directory ( $oldBusted )..."
mkdir -p $oldBusted
echo "...done"

echo "Change directory to $newHotness ..."
cd $newHotness
echo "...done"

echo "Create Symlinks..."
for file in $files; do
    echo "===== Processing $file ====="
    echo "Move exiting $file from ~/ to $oldBusted ..."
    mv ~/$file $oldBusted
    echo "...done"
    echo "Create symlink to $newHotness/$file in ~/ ..."
    ln -s $newHotness/$file ~/$file
    echo "===== Processed $file\n====="
done

echo "Install Git Submodules..."
cd $newHotness
git submodule update --init --recursive
if [ "$?" -ne 0 ]; then
    echo "WARNING: Issues installing Git Submodules"
fi
echo "...done"

echo "All done!"

