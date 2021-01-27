lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true, -- syntax highlightを有効にする
    disable = {    -- 一部の言語では無効にする
      'c_sharp',
      'vue',
    }
  },
  indent = {
    enable = true,
  }
}
EOF
