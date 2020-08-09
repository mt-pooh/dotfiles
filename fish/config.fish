# for fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
set -Ux fish_user_paths $PYENV_ROOT/bin $fish_user_paths
pyenv init - | source

# nvim
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

# fzf
set -U FZF_LEGACY_KEYBINDINGS 0
set -U FZF_REVERSE_ISEARCH_OPTS "--reverse --height=100%"

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

set -x PSQL_EDITOR 'nvim + "set syntax=sql"'
