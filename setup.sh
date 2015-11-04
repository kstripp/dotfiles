#!/bin/bash

RCDIR=`pwd`

cd ..
LOCATION=`pwd`

# Bash config
if [ -f $LOCATION/.bashrc ]
then
	rm -r $LOCATION/.bashrc
fi
echo `ls`
ln -s $RCDIR/bashrc .bashrc

if [ -f $LOCATION/.dir_colors ]
then
	rm -r $LOCATION/.dir_colors
fi
ln -s $RCDIR/dir_colors .dir_colors

# Vim profile
if [ -f $LOCATION/.vim ]
then
	rm -r $LOCATION/.vim
fi
ln -s $RCDIR/vim .vim

if [ -f $LOCATION/.vimrc ]
then
	rm -r $LOCATION/.vimrc
fi
ln -s $RCDIR/vimrc .vimrc
