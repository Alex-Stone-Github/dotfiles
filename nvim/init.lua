-- ---------------
-- Basic Config --
-- ---------------
vim.opt.number = true
vim.opt.mouse = 'a'
vim.cmd [[colorscheme gruvbox]]

-- Gotta love tabs

-- Fuzzy file finder
-- vim.keymap.set('n', 'm', require('telescope.builtin').find_files, {})

-- ------------------
-- Plugins & Stuff --
-- ------------------
-- This saves packer for when we reinstall
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use {
		"nvim-telescope/telescope.nvim", tag= '0.1.4', requires = { {'nvim-lua/plenary.nvim'} }
	}
	use "morhetz/gruvbox"
end)

