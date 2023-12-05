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
  use {'nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'}}
  use {
	 'nvim-treesitter/playground'
}
  use {
	  "theprimeagen/harpoon"
}
use "stevearc/conform.nvim"
use "mfussenegger/nvim-lint"

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
use "rafamadriz/friendly-snippets"
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
    'dhruvasagar/vim-table-mode'
}
use ({
	'Saimo/peek.nvim', as = 'peek',
	run = 'deno task --quiet build'
})
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
use  'saadparwaiz1/cmp_luasnip'

use {
  "pwntester/codeql.nvim",
  requires = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/telescope.nvim",
    "kyazdani42/nvim-web-devicons",
    {
      's1n7ax/nvim-window-picker',
      tag = 'v1.*',
      config = function()
        require'window-picker'.setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            bo = {
              filetype = {
                "codeql_panel",
                "codeql_explorer",
                "qf",
                "TelescopePrompt",
                "TelescopeResults",
                "notify",
                "noice",
                "NvimTree",
                "neo-tree",
              },
              buftype = { 'terminal' },
            },
          },
          current_win_hl_color = '#e35e4f',
          other_win_hl_color = '#44cc41',
        })
      end,
    }
  },
  config = function()
    require("codeql").setup {}
  end
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
