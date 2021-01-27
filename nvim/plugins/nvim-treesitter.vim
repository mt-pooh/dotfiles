lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true, -- syntax highlightを有効にする
    disable = {    -- 一部の言語では無効にする
      'lua',
      'ruby',
      'c_sharp',
      'vue',
    }
  },
  indent = {
    enable = true,
  }
}
EOF
