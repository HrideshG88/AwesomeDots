local cmp = require("cmp")
local tabnine = require("cmp_tabnine.config")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "crates" },
	}, {
		{ name = "buffer" },
	}),
})

tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	run_on_every_keystroke = true,
	snippet_placeholder = "..",
})
