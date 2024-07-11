require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"html",
		"solidity_ls_nomicfoundation",
		"tsserver",
		"jedi_language_server",
		"rust_analyzer",
	},
})

local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
	vim.keymap.set("n", "gD", vim.lsp.buf.declaration, {})
	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "<leader>D", vim.lsp.buf.type_definition, {})
	vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

require("lspconfig").lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})
require("lspconfig").jedi_language_server.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

--SOLIDITY

local lsp_flags = {
	-- This is the default in Nvim 0.7+
	debounce_text_changes = 150,
}
require("lspconfig")["tsserver"].setup({
	on_attach = on_attach,
	flags = lsp_flags,
})
require("lspconfig").solidity_ls_nomicfoundation.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
	filetpes = { "solidity" },
	root_dir = lspconfig.util.find_git_ancestor,
	single_file_support = true,
})

--lspconfig.solidity.setup({
--	on_attach = on_attach,
--	capabilities = capabilities,
--	flags = lsp_flags,
--})

--RUST

lspconfig.rust_analyzer.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		["rust-analyzer"] = {
			imports = {
				granularity = {
					group = "module",
				},
				prefix = "self",
			},
			cargo = {
				buildScripts = {
					enable = true,
				},
			},
			procMacro = {
				enable = true,
			},
		},
	},
})

local configs = require("lspconfig.configs")
if not configs.sway_lsp then
	configs.sway_lsp = {
		default_config = {
			cmd = { "forc-lsp" },
			filetypes = { "sway" },
			init_options = {
				-- Any initialization options
				logging = { level = "trace" },
			},
			root_dir = function(fname)
				return lspconfig.util.find_git_ancestor(fname)
			end,
			settings = {},
		},
	}

	lspconfig.sway_lsp.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		flags = lsp_flags,
	})
end
