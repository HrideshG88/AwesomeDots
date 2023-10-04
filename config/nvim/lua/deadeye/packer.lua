-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
}
  use {
	 'nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'}
}

  use {
	 'nvim-treesitter/playground'
}
  use {
	  "theprimeagen/harpoon"
}

  use {
	 'mbbill/undotree'
}
  use {
	 'tpope/vim-fugitive'
}
  use {
	 'lervag/vimtex'
}

use {
	'AlphaTechnolog/pywal.nvim', as = 'pywal'
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
    'dhruvasagar/vim-table-mode'
}
use {

  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use({
  "epwalsh/obsidian.nvim",
  requires = {
    -- Required.
    "nvim-lua/plenary.nvim",
 },
  config = function()
   require("obsidian").setup({
      dir = "~/hack/knowledgebase",
    })
  end,
})
end)
