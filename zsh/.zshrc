eval "$(starship init zsh)"
export PATH=$PATH:/opt/homebrew/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# alias
alias ..='cd ..'
alias vi='nvim'
alias lg='lazygit'
alias relogin='exec $SHELL -l'
alias ls='exa --icons'
alias ll='exa -ahl --git --icons'

export FZF_CTRL_T_COMMAND='rg --files --hidden --follow --glob "!.git/*"'
export FZF_CTRL_T_OPTS='--preview "bat  --color=always --style=header,grid --line-range :100 {}"'
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH=/usr/local/bin:$PATH

### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk
# ---------------------------------------------------------
# plugin list
# ---------------------------------------------------------

zinit ice wait lucid
zinit light zsh-users/zsh-completions # 補完
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions # 補完
zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting
zinit ice wait lucid
zinit light chrissicool/zsh-256color
zinit ice depth=1
zinit light olets/zsh-abbr
zinit light migutw42/zsh-fzf-ghq

# ---------------------------------------------------------
# basic
# ---------------------------------------------------------

# 履歴保存管理
HISTFILE=$ZDOTDIR/.zsh-history
HISTSIZE=100000
SAVEHIST=1000000

# 他のzshと履歴を共有
setopt inc_append_history
setopt share_history

# ---------------------------------------------------------

# コマンド補完
autoload -Uz compinit && compinit

# 小文字でも大文字にマッチ
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補をTabや矢印で選択可能
zstyle ':completion:*:default' menu select=1

# ---------------------------------------------------------
# hight-light
# ---------------------------------------------------------

# サジェストの色変更
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"

# lsコマンドで色分けする
zstyle ':completion:*' list-colors $LSCOLORS

# aws profileを切り替える
function awsp() {
  case ${OSTYPE} in
    darwin*)
        # Mac用の設定
        local profile=$(aws configure list-profiles | sed "/default/d" | sort | fzf )
        ;;
    linux*)
        # Linux用の設定
        local profile=$(grep -o -P '(?<=\[profile )[^\]]+' ~/.aws/config | sort | fzf )
        ;;
  esac
  export AWS_PROFILE="$profile"
}

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/koki.muguruma/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
