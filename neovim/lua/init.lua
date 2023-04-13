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

--PLUGINS

local lazy = {}

function lazy.install(path)
	if not vim.loop.fs_stat(path) then
		print('Installing lazy.nvim...')
		vim.fn.system({
			'git',
			'clone',
			'--filter=blob:none',
			'https://github.com/folke/lazy.nvim.git',
			'--branch=stable', -- latest stable release
			path,
		})
	end
end

function lazy.setup(plugins)
	lazy.install(lazy.path)

	vim.opt.rtp:prepend(lazy.path)
	require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
	--{'folke/tokyonight.nvim'},
		{'nvim-lualine/lualine.nvim'},
		{'romgrk/barbar.nvim'},
		{'nvim-tree/nvim-web-devicons'},
		{'MunifTanjim/nui.nvim'},
		{'folke/noice.nvim'}
})

vim.opt.termguicolors = true
--vim.cmd.colorscheme('tokyonight')

require('lualine').setup({
	options = {
		icons_enabled = true,
		theme = 'molokai',
		component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
		},
	})

require('lazy').setup {
  {'romgrk/barbar.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}

require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})
