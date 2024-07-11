local dap, dapui = require("dap"), require("dapui")
dap.adapters["pwa-node"] = {

	type = "server",
	host = "127.0.0.1",
	port = 8123,
	executable = {
		cmd = "js-debug-adapter",
	},
}

for _, language in ipairs({ "typescript", "javascript" }) do
	dap.configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "launch file",
			program = "${file}",
			cwd = "${worspaceDir}",
			runtimeExecutable = "node",
		},
	}
end

require("dapui").setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open({})
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close({})
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close({})
end

vim.keymap.set("n", "<leader>ui", require("dapui").toggle)
