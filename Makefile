.PHONY: install install-vim install-zsh install-alacritty restart

install: install-vim install-zsh install-alacritty

install-vim: restart
	@echo "Installing new neovim configuration!"
	-mkdir ../nvim
	cp ./nvim/init.lua ../nvim/init.lua
	# Packer Install (this configuration uses packer)
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Successfully installed neovim configuration!"
	@echo "Run PackerInstall command to install neovim plugins. Install releveant languages with TSInstall"
restart:
	rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
install-zsh:
	@echo "Installing new zsh configuration!"
	cp ./zsh/.zshrc ~/.zshrc
	@echo "Successfully installed zsh configuration!"
install-alacritty:
	@echo "Installing alacritty configuration!"
	-mkdir ../alacritty
	cp alacritty/alacritty.toml ../alacritty/
	@echo "Successfully alacritty configuration!"
