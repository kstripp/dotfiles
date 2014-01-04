#!/bin/bash

LOCATION=`pwd`

cd $HOME

# Bash config
if [ -f $HOME/.bashrc ]
then
	rm -r $HOME/.bashrc
fi
echo `ls`
ln -s $LOCATION/bashrc .bashrc

if [ -f $HOME/.dir_colors ]
then
	rm -r $HOME/.dir_colors
fi
ln -s $LOCATION/dir_colors .dir_colors

# Vim profile
if [ -f $HOME/.vim ]
then
	rm -r $HOME/.vim
fi
ln -s $LOCATION/vim .vim

if [ -f $HOME/.vimrc ]
then
	rm -r $HOME/.vimrc
fi
ln -s $LOCATION/vimrc .vimrc
