return {
	'Mofiqul/vscode.nvim',
	lazy = false,
	main = 'vscode',
	opts = {
	},
	config = function ()
		require('vscode.colors').get_colors()
		require('vscode').setup({
			transparent = true,
			italic_comments = true,
			underline_links = true,
			disable_nvimtree_bg = true,
			terminal_colors = true
		})
	end,
}
