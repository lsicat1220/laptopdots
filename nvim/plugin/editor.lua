vim.pack.add({
	"https://github.com/windwp/nvim-autopairs",
	"https://github.com/Saghen/blink.cmp",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/folke/which-key.nvim",
})

require("nvim-autopairs").setup()
require("blink.cmp").setup({
  keymap = { preset = 'default' },

  appearance = {
    nerd_font_variant = 'mono'
  },

	completion = { 
		documentation = { auto_show = true },
		ghost_text = {enabled = true},
	},

	signature = {
		enabled = true
	},
  sources = {
    default = { 'lsp', 'path', 'snippets', 'buffer' },
  },

  fuzzy = {
    implementation = "prefer_rust_with_warning"
  }
})

