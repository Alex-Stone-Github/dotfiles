
.PHONY: install


install:
	@echo "Installing new neovim configuration!"
	cp ./nvim/init.lua ../nvim/init.lua
	# Packer Install (this configuration uses packer)
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Successfully installed neovim configuration!"
