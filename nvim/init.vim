set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard+=unnamedplus  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set cursorline         "カーソルラインを表示"
set wildmenu           "ステータスラインにコマンド候補を表示"

"折り返し時に表示行単位での移動できるようにする"
nnoremap j gj
nnoremap k gk

"タブ、空白、改行の可視化
set list
"全角スペースをハイライト表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction

" Search and Replace
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim "Add the dein installation directory into runtimepath

" for dein.vim https://github.com/Shougo/dein.vim
if &compatible
  set nocompatible
endif
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0}) "Neovim を起動した際にロードされる
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1}) "プラグインを使用する際にロードされる
  call dein#load_toml('~/.config/nvim/dein_frontend.toml', {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
filetype plugin indent on
syntax enable

:command UP UpdateRemotePlugins