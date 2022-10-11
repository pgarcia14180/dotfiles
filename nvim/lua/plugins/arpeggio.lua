local cmd = vim.api.nvim_command
vim.fn["arpeggio#load"]()
function map_esc_key(key)
    vim.api.nvim_command([[Arpeggio inoremap ]]..key..[[ <Esc>]])
    vim.api.nvim_command([[Arpeggio vnoremap ]]..key..[[ <Esc>]])
    vim.api.nvim_command([[Arpeggio xnoremap ]]..key..[[ <Esc>]])
    vim.api.nvim_command([[Arpeggio cnoremap ]]..key..[[ <Esc>]])
end

map_esc_key("jk")
map_esc_key("kj")
map_esc_key("JK")
map_esc_key("KJ")


