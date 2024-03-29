# for fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# M1 Mac用homebrewのPATHを通す
if uname | grep 'Darwin' > /dev/null
  set PATH /opt/homebrew/bin /opt/homebrew/opt/python@3.9/libexec/bin $PATH
end

# pyenv
pyenv init - | source

# nvim
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"
set -U EDITOR nvim # default editor
set -U FZF_DEFAULT_COMMAND 'rg --files --hidden --follow --glob "!.git/*"'
set -U FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND

# Rust
set PATH $HOME/.cargo/bin $PATH
# poetry
set PATH $HOME/.local/bin $PATH

# GO
set -Ux GOPATH $HOME/go
set PATH $GOPATH/bin $PATH
# ghqのrootディレクトリを設定
# git config --global ghq.root ~/repos

# WSLでGUIが使えるように
if uname -r | grep 'microsoft' > /dev/null
  set -l LOCAL_IP (cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
  set -xg DISPLAY $LOCAL_IP:0
end

# alias
alias ..='cd ..'
alias vi='nvim'
alias lg='lazygit'
alias relogin='exec $SHELL -l'
alias ls='exa --icons'
alias ll='exa -ahl --git --icons'

set -x PSQL_EDITOR 'nvim + "set syntax=sql"'

# # ------------------------------------
# # abbr 
# # ------------------------------------

abbr -a gst git status
abbr -a gc git commit
abbr -a gd git diff
abbr -a gca git commit --amend
abbr -a glo git log --oneline

abbr -a d docker
abbr -a dps docker ps
abbr -a dpa docker ps -a
abbr -a di docker images
abbr -a dex docker exec -i -t
abbr -a dco docker compose

abbr -a awsp set -gx AWS_DEFAULT_PROFILE
