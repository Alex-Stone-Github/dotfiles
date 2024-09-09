
.PHONY: install


install:
	@echo "Installing new neovim configuration!"
	@cp ./nvim/init.lua ../nvim/init.lua
	@echo "Successfully installed neovim configuration!"
