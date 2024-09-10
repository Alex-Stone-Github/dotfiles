
vim.opt.number = true
vim.opt.mouse = 'a'

-- ------------------
-- Plugins & Stuff --
-- ------------------

return require('packer').startup(function(use)
	use "morhetz/gruvbox"
end)
