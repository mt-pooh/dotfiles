# for fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
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
# set -U fish_user_paths $HOME/.cargo/bin $fish_user_paths

# starship
# install
# curl -fsSL https://starship.rs/install.sh | bash
starship init fish | source

# alias
alias ..='cd ..'
alias vi='nvim'
alias gst='git status'
alias gc='git commit'
alias gd='git diff'
alias gca='git commit --amend'
alias glo='git log --oneline'
alias lg='lazygit'
alias relogin='exec $SHELL -l'
alias ls='exa'
alias ll='exa -ahl --git'

set -x PSQL_EDITOR 'nvim + "set syntax=sql"'

# ------------------------------------
# # docker alias 
# # ------------------------------------

alias d="docker"

alias dps="docker ps"

alias dpa="docker ps -a"

alias di="docker images"

alias dex="docker exec -i -t"

# # ------------------------------------
# # docker-compose alias 
# # ------------------------------------

alias dco="docker-compose"
