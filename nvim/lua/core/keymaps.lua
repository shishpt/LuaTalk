
--GLOBAL
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--OPTIONS
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

--Spaces for tabs
vim.opt.number = true				--Enable margin numbers
vim.opt.mouse = 'a' 				--Enable mouse for all modes
vim.opt.ignorecase = true		--Ignores casing in search
vim.opt.wrap = true					--Enable wrap text
vim.opt.breakindent = true	--Shows wrap of lines with indent
vim.opt.tabstop = 2					--Tab=2 spaces
vim.opt.shiftwidth = 2			--Sets keybinding for << & >> to 2 spaces (same as tabstop)
vim.opt.shiftround = true
vim.opt.expandtab = true		--transform Tab character to Spaces

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
