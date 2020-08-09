" エラー行に表示するマーク
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
" " エラー行にカーソルをあわせた際に表示されるメッセージフォーマット
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" " エラー表示の列を常時表示
let g:ale_sign_column_always = 1

" ファイルを開いたときにlint実行
let g:ale_lint_on_enter = 1
" " ファイルを保存したときにlint実行
let g:ale_lint_on_save = 1
" " 編集中のlintはしない
let g:ale_lint_on_text_changed = 'never'
"
" " lint結果をロケーションリストとQuickFixには表示しない
" " 出てると結構うざいしQuickFixを書き換えられるのは困る
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0

" 有効にするlinter
let g:ale_linters = {
\   'python': ['flake8'],
\   'javascript': ['eslint'],
\   'typescript': ['tsserver', 'tslint'],
\}

" 自動整形
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'python': ['autopep8', 'isort'],
\   'vue': ['eslint'],
\   'html': ['prettier'],
\   'scss': ['prettier'],
\   'markdown': [
\     {buffer, lines -> {'command': 'textlint -c ~/.config/textlintrc -o /dev/null --fix --no-color --quiet %t', 'read_temporary_file': 1}}
\    ],
\}
let g:ale_fix_on_save = 1