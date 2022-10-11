local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')
-- allows to call commands by pressing more than one key
Plug 'kana/vim-arpeggio'

-- vifm
-- Plug 'vifm/neovim-vifm'

-- Treesitter
Plug 'nvim-treesitter/nvim-treesitter'

-- lsp configs
Plug 'neovim/nvim-lspconfig'

-- autocompletion plugins
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'is0n/fm-nvim'
Plug 'ggandor/lightspeed.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'github/copilot.vim'
Plug 'numToStr/Comment.nvim'

-- Plug 'nvim-telescope/telescope-file-browser.nvim'
vim.call('plug#end')

require 'plugins/arpeggio'
-- require 'plugins/vifm'
require 'plugins/telescope'
require 'plugins/treesitter'
require 'plugins/fm'
require 'plugins/lspconfig'
require 'plugins/toggleterm'
require 'plugins/Comment'
