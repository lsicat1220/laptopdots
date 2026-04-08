vim.pack.add({
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/otavioschwanck/arrow.nvim",
})

require("fzf-lua").setup({
	fzf_colors = true
})

require("arrow").setup({
	leader_key = "\\" 
})
