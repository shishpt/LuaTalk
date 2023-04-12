--OPTIONS

vim.opt.number = true				--Enable margin numbers
vim.opt.mouse = 'a' 				--Enable mouse for all modes
vim.opt.ignorecase = true		--Ignores casing in search
vim.opt.wrap = true					--Enable wrap text
vim.opt.breakindent = true	--Shows wrap of lines with indent
vim.opt.tabstop = 2					--Tab=2 spaces
vim.opt.shiftwidth = 2			--Sets keybinding for << & >> to 2 spaces (same as tabstop)
vim.opt.expandtab = false		--transform Tab character to Spaces

--GLOBAL
vim.g.mapleader = ' '

--KEYBINDINGS

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', {desc = 'Save'})
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', {desc = 'Exit'})


