return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable('clangd')
		vim.lsp.enable('lua_ls')
		vim.lsp.enable('rust_analyzer')
		vim.lsp.enable('csharp_ls')
		vim.lsp.enable('pyright')
		vim.lsp.enable('ts_ls')
		vim.lsp.enable('css_variables')
		vim.lsp.enable('qmlls')
		vim.lsp.config('qmlls', {
			cmd = {'qmlls6', "-E"}
		})
		vim.lsp.enable('html')
		vim.lsp.enable('tinymist')
	end
}
