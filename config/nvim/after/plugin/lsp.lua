local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, {})
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
--
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {'awk_ls','bashls','rust_analyzer','denols','jqls','ltex', 'lemminx','tsserver','marksman', 'html'},
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      local lua_opts = lsp.nvim_lua_ls()
      require('lspconfig').lua_ls.setup(lua_opts)
    end,
  },
})

lsp.setup()

local cmp = require('cmp')
local cmp_format = lsp.cmp_format()
local cmp_action = lsp.cmp_action()

require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
    sources = cmp.config.sources({
	 { name = 'nvim_lsp' },
	 { name = 'nvim_lua' },
	 { name = 'luasnip' },
    }),
    formatting = cmp_format,
    mapping = cmp.mapping.preset.insert({
      	['<CR>'] = cmp.mapping.confirm({select = false}),
	['<C-Space>'] = cmp.mapping.complete(),
	['<Tab>'] = cmp_action.luasnip_supertab(),
    	['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	['<Tab>'] = cmp_action.tab_complete(),
    	['<S-Tab>'] = cmp_action.select_prev_or_fallback(),
    }),
    preselect = 'item',
    completion = {
      	completeopt = 'menu,menuone,noinsert'
    },
    snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})

