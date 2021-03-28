set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard+=unnamedplus  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする
set cursorline         "横のカーソルラインを表示"
set cursorcolumn       "縦のカーソルラインを表示"
set wildmenu           "ステータスラインにコマンド候補を表示"
set mouse=a            "マウス操作を有効化"
set list listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:% "タブ/改行/スペースを可視化"

let mapleader = "\<Space>"
nnoremap <leader>q :qa!<cr>
" bufferを削除
nnoremap <leader>b :bd<cr>
nnoremap <leader>w :wa<cr>
" buffer移動
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>

"折り返し時に表示行単位での移動できるようにする"
nnoremap j gj
nnoremap k gk

" Escを2回押すとハイライトを消す
nnoremap <Esc><Esc> :nohlsearch<CR>
" : => ;
nnoremap ; :
" jjでesc
inoremap <silent> jj <ESC>

" バッファの切り替え
nnoremap <silent>bp :bprevious<CR>
nnoremap <silent>bn :bnext<CR>
nnoremap <silent>bb :b#<CR>

" sqltmplファイルでsqlの色を付ける
autocmd BufNewFile,BufRead *.sqltmpl  set filetype=sql

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
