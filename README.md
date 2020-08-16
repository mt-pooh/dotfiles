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

# install pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

sudo apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python-openssl git

# symlink
./dotfilesLink.sh
fish

pyenv install 3.7.2  # latest version
pyenv rehash
pyenv global 3.7.2
pyenv version
pip --version  # check

# install nvim
# pip install neovim

sudo apt-get install neovim

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein
```

