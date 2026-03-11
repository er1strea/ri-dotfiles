local Plug = vim.fn['plug#']
vim.call('plug#begin')
	Plug('rose-pine/neovim')
	Plug('nvim-tree/nvim-tree.lua')
	Plug('nvim-tree/nvim-web-devicons')
	Plug('romgrk/barbar.nvim')
	Plug('nvim-lualine/lualine.nvim')
	Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
	Plug('mason-org/mason.nvim')
	Plug('https://github.com/mfussenegger/nvim-dap')
	Plug('neovim/nvim-lspconfig')
	Plug('hrsh7th/nvim-cmp')
	Plug('hrsh7th/cmp-nvim-lsp')
	Plug('hrsh7th/cmp-buffer')
	Plug('hrsh7th/cmp-path')
	Plug('hrsh7th/cmp-nvim-lua')
	Plug('hrsh7th/vim-vsnip')
	Plug('hrsh7th/vim-vsnip-integ')
	Plug('nvim-lua/plenary.nvim')
	Plug('nvim-telescope/telescope.nvim')
	Plug('windwp/nvim-autopairs')
	Plug('rachartier/tiny-inline-diagnostic.nvim')
	Plug('goolord/alpha-nvim')
vim.call('plug#end')
home = os.getenv("HOME")
package.path = home .. "/.config/nvim/?.lua;" .. package.path

require "config"
dofile("/home/solvr/.config/nvim/rose_pine.lua")
require "vim-tree"
require "bar_bar"
require "lua_line"
require "treesitter"
require("mason").setup()
require "lsp"
require "cmp_config"
require "keybinds"
require "rua"
require("nvim-autopairs").setup {}
require("tiny-inline-diagnostic").setup {}
require "alpha_dashboard"
