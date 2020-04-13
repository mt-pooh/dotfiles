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
