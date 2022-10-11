require("toggleterm").setup{
  direction = 'float',
}
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<Leader>t", ":ToggleTerm<esc>", opts)
