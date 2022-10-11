local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Sets space as leader key
keymap("n", " ", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Fast saving with <leader> and s
-- keymap('n', '<leader>s', ':w<CR>', opts)
-- keymap('i', '<leader>s', '<C-c>:w<CR>', opts)





-- reload init.lua
-- keymap('i', '<leader>r', ':luafile %', opts)

