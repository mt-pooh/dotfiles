lua <<EOF
-- Keybinding

-- Closer to the metal
vim.fn.nvim_set_keymap('n', '<leader>i', ':FTermToggle<CR>', { noremap = true, silent = true })
vim.fn.nvim_set_keymap('t', '<leader>i', '<C-\\><C-n>:FTermToggle<CR>', { noremap = true, silent = true })
EOF
