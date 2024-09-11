.PHONY: install install-vim restart

install: install-vim install-zsh

install-vim: restart
	@echo "Installing new neovim configuration!"
	mkdir ../nvim
	cp ./nvim/init.lua ../nvim/init.lua
	# Packer Install (this configuration uses packer)
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Successfully installed neovim configuration!"
	@echo "Run PackerInstall command to install neovim plugins. Install releveant languages with TSInstall"
install-zsh:
	@echo "Installing new zsh configuration!"
	cp ./zsh/.zshrc ~/.zshrc
	@echo "Successfully installed zsh configuration!"
restart:
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
