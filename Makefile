.PHONY: install install-vim install-zsh install-alacritty install-nerdfont-proto

install: install-vim install-zsh install-alacritty

install-vim:
	@echo "Installing new neovim configuration!"
	-mkdir ../nvim
	- rm -rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	cp ./nvim/init.lua ../nvim/init.lua
	# Packer Install (this configuration uses packer)
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
		 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	@echo "Successfully installed neovim configuration!"
	@echo "Run PackerInstall command to install neovim plugins. Install releveant languages with :CocInstall<cr>"
install-zsh:
	@echo "Installing new zsh configuration!"
	cp ./zsh/.zshrc ~/.zshrc
	@echo "Successfully installed zsh configuration!"
install-alacritty: install-nerdfont-proto
	@echo "Installing alacritty configuration!"
	-mkdir ../alacritty
	cp alacritty/alacritty.toml ../alacritty/
	@echo "Successfully alacritty configuration!"

install-nerdfont-proto:
	@echo "Installing 0xProto Nerdfont!"
	- mkdir ~/.local/share/fonts
	unzip 0xProto.zip -d ~/.local/share/fonts
	@echo "Successfully Install 0xProto Nerdfont!"
	fc-cache -fv

