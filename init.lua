--
-- Config
--
local g = vim.g
local o = vim.o

-- sane defaults
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false
o.timeoutlen = 500
o.updatetime = 200
o.wrap = false;
o.clipboard = 'unnamedplus'
o.history = 50
vim.opt.mouse = 'a';

-- nice colors / gui
o.termguicolors = true
o.number = true
o.signcolumn = 'yes'
o.cursorline = true
o.relativenumber = true

-- Tabs dun dun dun
o.expandtab = true
o.smarttab = true
o.cindent = true
o.tabstop = 4
o.shiftwidth = 0
o.softtabstop = -1

-- Searching
o.ignorecase = true
o.smartcase = true

-- color scheme
vim.cmd("colo bold")

-- disable match parenthesis highlight
g.loaded_matchparen = 1


--
-- Keybindings
--

-- mode key value
local function map(m, k, v)
	vim.keymap.set(m, k, v, { silent = true })
end

-- split navigation
map('n', '<S-h>', "<C-w>h")
map('n', '<S-j>', "<C-w>j")
map('n', '<S-k>', "<C-w>k")
map('n', '<S-l>', "<C-w>l")

-- file navigation
map('n', '<S-m>', ":Telescope find_files prompt_prefix=🔍<CR>")
map('n', '<A-m>', ":Neotree toggle<CR>")

-- terminal navigation
map('n', '<S-t>', ":term<CR>")

-- man pages
map('n', '<S-y>', ":Man<CR>")


--
-- Plugins
--
local vim = vim
local execute = vim.api.nvim_command
local fn = vim.fn
-- ensure that packer is installed
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})
--- startup and add configure plugins
packer.startup(function()
    local use = use
    -- add you plugins here like:
    --  fuzzy navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- autocomplete
    use {
        'neoclide/coc.nvim',
        branch = 'release'
	}
    -- file explorer
    use {
        'nvim-neo-tree/neo-tree.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'kyazdani42/nvim-web-devicons',
            'MunifTanjim/nui.nvim'
        }
    }
    use 'mattn/emmet-vim'
    end
)
-- setup
