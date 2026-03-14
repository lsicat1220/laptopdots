vim.keymap.set(
	'n',
	'<leader>md',
	function()
		vim.opt.wrap = true
		vim.opt.linebreak = true
		vim.opt.textwidth = 8
	end,
	{desc = 'Enter doc mode'}
)
--fzf-lua
vim.keymap.set('n', '<leader>ff', function () require('fzf-lua').files() end, {desc = 'Fzf files'})
vim.keymap.set('n', '<leader>fd', function () require('fzf-lua').lsp_definitions() end, {desc = 'Fzf function definitions'})
vim.keymap.set('n', '<leader>fg', function () require('fzf-lua').grep() end, {desc = 'Fzf grep'})
vim.keymap.set('n', '<leader>fp', function () require('fzf-lua').grep_project() end, {desc = 'Fzf grep project'})
vim.keymap.set('n', '<leader>fs', function () require('fzf-lua').lsp_workspace_symbols() end, {desc = 'Fzf workspace symbols'})
vim.keymap.set('n', '<leader>fr', function () require('fzf-lua').lsp_references() end, {desc = 'Fzf references'})
vim.keymap.set('n', '<leader>fi', function () require('fzf-lua').lsp_incoming_calls() end, {desc = 'Fzf incoming calls'})
vim.keymap.set('n', '<leader>fo', function () require('fzf-lua').lsp_outgoing_calls() end, {desc = 'Fzf outgoing calls'})
vim.keymap.set('n', '<leader>fb', function () require('fzf-lua').buffers() end, {desc = 'Fzf buffers'})

vim.keymap.set('n', '<leader>sd', function() vim.lsp.buf.hover() end, {desc = 'Show function definition'})
vim.keymap.set('n', '<leader>sr', function() vim.lsp.buf.replace() end, {desc = 'Replace symbol'})

vim.keymap.set('n', '<leader>e', "<CMD>Oil<CR>", {desc = "Open file explorer"});

vim.keymap.set('n', '<leader>p', function () require('dap').toggle_breakpoint() end, {desc = "Toggle breakpoint"})
vim.keymap.set('n', '<leader>d', "<CMD>DapNew<CR>", {desc = "Start debug"})
vim.keymap.set('n', '<leader>v', "<CMD>DapViewOpen<CR>", {desc = "Start debug view"})
vim.keymap.set('n', '<leader>b', function () require('dap').continue() end, {desc = "Continue debug"})
vim.keymap.set('n', '<leader>j', function () require('dap').step_over() end, {desc = "Step over"})
vim.keymap.set('n', '<leader>h', function () require('dap').step_into() end, {desc = "Step into"})
vim.keymap.set('n', '<leader>l', function () require('dap').step_out() end, {desc = "Step out"})

vim.keymap.set('n', '<leader>m', "<CMD>Markview toggle<CR>", {desc = "Toggle markview"})
vim.keymap.set('n', '<leader>ms', "<CMD>Markview splitToggle<CR>", {desc = "Toggle markview split"})
