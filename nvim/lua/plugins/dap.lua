return {
	{
		"mfussenegger/nvim-dap",
		config = function ()
			local dap = require('dap')
			dap.adapters.gdb = {
				id = 'gdb',
				type = 'executable',
				command = 'gdb',
				args = {"--interpreter=dap", "--quiet", "-ex", "set confirm off", "-ex", "set print pretty on"}
			}
			dap.configurations.c = {
				{
					name = "Launch",
					type = "gdb",
					request = "launch",
					program = function()
						return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
					end,
					args = {}, -- provide arguments if needed
					cwd = "${workspaceFolder}",
					stopAtBeginningOfMainSubprogram = false,
				}
			}
		end,
	},
	{
		"igorlfs/nvim-dap-view",
		---@module 'dap-view' 
		---@type dapview.Config
		opts = {},
	}
}
