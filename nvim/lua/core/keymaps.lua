local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

function noremap(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Visual --
-- Stay in indent mode
--
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Use Y to yank line with linebreak
noremap("n", "Y", "Y")
