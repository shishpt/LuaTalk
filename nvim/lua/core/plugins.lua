local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'                              --Plugin Manager
  use 'nvim-tree/nvim-tree.lua'                             --File Explorer
  use 'nvim-tree/nvim-web-devicons'                         --Icons
	use 'nyoom-engineering/oxocarbon.nvim'										--Theme
  use 'nvim-lualine/lualine.nvim'                           --Status bar
  use 'nvim-treesitter/nvim-treesitter'                     --Syntax highlighting
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use {
    'nvim-telescope/telescope.nvim',                        --Finder
    tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
      }
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plu:gins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
