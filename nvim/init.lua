
vim.opt.number = true
vim.opt.mouse = 'a'

-- ------------------
-- Plugins & Stuff --
-- ------------------
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use "morhetz/gruvbox"
end)
