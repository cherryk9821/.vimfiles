#! /bin/bash
mkdir -p $HOME/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
ln -sf $HOME/.vimfiles/vimrc_vundle $HOME/.vimrc
vim +PluginInstall +qall
vim +GoInstallBinaries +qall
ln -sf $HOME/.vimfiles/vimrc $HOME/.vimrc
