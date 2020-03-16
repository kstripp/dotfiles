#!/bin/bash

RCDIR=`pwd`

cd ..
LOCATION=`pwd`

# Zsh config
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

if [ -f $LOCATION/.zshrc ]
then
	rm -r $LOCATION/.zshrc
fi
ln -s $RCDIR/zshrc .zshrc

# Bash config
if [ -f $LOCATION/.bashrc ]
then
	rm -r $LOCATION/.bashrc
fi
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
cd .vim
mkdir bundle && cd bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
cd $LOCATION

if [ -f $LOCATION/.vimrc ]
then
	rm -r $LOCATION/.vimrc
fi
ln -s $RCDIR/vimrc .vimrc

# Tmux
if [ -f $LOCATION/.tmux.conf ]
then
	rm -r $LOCATION/.tmux.conf
fi
ln -s $RCDIR/tmux.conf .tmux.conf
