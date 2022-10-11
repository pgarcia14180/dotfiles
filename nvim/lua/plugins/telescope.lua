require "telescope".setup {
  pickers = {
    marks = {
      initial_mode = "normal"
    },
    buffers = {
      initial_mode = "normal"
    },
    find_files = {
      initial_mode = "normal"
    }
  }
}
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<Leader>f", ":Telescope find_files<esc>", opts)
keymap("n", "<Leader>b", ":Telescope buffers<esc>", opts)
keymap("n", "<Leader>m", ":Telescope marks<esc>", opts)

