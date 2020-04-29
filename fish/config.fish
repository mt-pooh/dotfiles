# for fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# pyenv
set PYENV_ROOT ~/.pyenv/bin
set -x PATH $PYENV_ROOT $PATH
status --is-interactive; and pyenv init - | source

# nvim
set -x XDG_CONFIG_HOME $HOME/.config
set -x XDG_CACHE_HOME $HOME/.cache

# alias
alias ..='cd ..'
alias vi='nvim'
alias gst='git status'
alias gc='git commit'
alias gd='git diff'
alias gca='git commit --amend'
alias glo='git log --oneline'
alias lg='lazygit'

set -x PSQL_EDITOR 'nvim + "set syntax=sql"'