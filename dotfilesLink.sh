#!/bin/sh
ln -sf ~/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -sf ~/dotfiles/fish/fishfile ~/.config/fish/fishfile
ln -sf ~/dotfiles/nvim ~/.config/nvim
ln -sf ~/dotfiles/jupyter/jupyter_notebook_config.py ~/.jupyter/jupyter_notebook_config.py
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf

# nvim参照: https://qiita.com/Ress/items/7e71e007cf8d41a07a1a
# nvim準備
# pyenv
#git clone https://github.com/pyenv/pyenv.git ~/.pyenv
#sudo ~/.pyenv/plugins/python-build/install.sh
#pyenv install 3.7.2
#pyenv rehash
#pyenv global 3.7.2
#pyenv version
#python --version
#pip --version
#pip install neovim
#pip freeze | grep neovim
#
#source ~/.config/fish/config.fish
#
#sudo add-apt-repository ppa:neovim-ppa/stable
#sudo apt-get update
#sudo apt-get install neovim


