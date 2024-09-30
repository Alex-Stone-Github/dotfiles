
-- ---------------
-- Basic Config --
-- ---------------
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Gotta love tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false -- Color Scheme
vim.cmd [[colorscheme gruvbox]]

-- Keymaps
local mapit = function(mode, key, callee)
	vim.api.nvim_set_keymap(
	mode, key, callee, 
	{noremap = true, silent = true})
end
mapit("n", "<s-j>", "<c-w>j");
mapit("n", "<s-k>", "<c-w>k");
mapit("n", "<s-h>", "<c-w>h");
mapit("n", "<s-l>", "<c-w>l");

-- ------------------
-- Plugins & Stuff --
-- ------------------
-- Plugin PreConfig
vim.cmd [[packadd packer.nvim]]
-- Plugin Config
require('packer').startup(function(use)
	use {
		"nvim-telescope/telescope.nvim", tag= '0.1.4', requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "nvim-treesitter/nvim-treesitter"
	use "morhetz/gruvbox"
	use {
		"nvim-lualine/lualine.nvim", requires = { {"nvim-tree/nvim-web-devicons"} }
	}
	use {"neoclide/coc.nvim", branch = "release"}
	use {"akinsho/toggleterm.nvim", tag = "*"}
end)
-- Plugin inits & keymaps
require('lualine').setup()
require('toggleterm').setup()
teles = require("telescope.builtin")
mapit('n', 'm', ':lua teles.find_files()<cr>')

mapit('n', 'n', ':ToggleTerm direction=horizontal<cr>')
mapit('t', 'n', '<C-d>')
mapit('t', '<Esc>', '<C-\\><C-n>')

