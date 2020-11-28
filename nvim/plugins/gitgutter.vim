set signcolumn=yes
set updatetime=300

nnoremap [gitgutter] <Nop>
nmap <Leader>h [gitgutter]
nmap [gitgutter]j <Plug>(GitGutterNextHunk)
nmap [gitgutter]k <Plug>(GitGutterPrevHunk)
nmap [gitgutter]u <Plug>(GitGutterUndoHunk)
