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

sudo apt install -y build-essential # c++コンパイラ
sudo apt install -y libffi-dev
sudo apt install -y libssl-dev # openssl
sudo apt install -y zlib1g-dev
sudo apt install -y liblzma-dev
sudo apt install -y libbz2-dev libreadline-dev libsqlite3-dev # bz2, readline, sqlite3
sudo apt install -y git

pyenv install 3.7.2  # latest version
pyenv rehash
pyenv global 3.7.2
pyenv version
pip --version  # check

# install nvim
pip install neovim

sudo apt-get install neovim

# install dein
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
# For example, we just use `~/.cache/dein` as installation directory
sh ./installer.sh ~/.cache/dein
```

