# dotfiles

## Install requirement
- neovim
- fish
- pyenv

## Preparation
For Ubuntu
```
# install fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
# install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
sudo ~/.pyenv/plugins/python-build/install.sh
pyenv install 3.7.2  # latest version
pyenv rehash
pyenv global 3.7.2
pyenv version
pip --version  # check

# install nvim
pip install neovim
pip freeze | grep neovim

source ~/.config/fish/config.fish
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

