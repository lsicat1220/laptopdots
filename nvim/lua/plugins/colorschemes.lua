return {
	{
		"mellow-theme/mellow.nvim",
		config = function()
			vim.g.mellow_transparent = true
		end
	},
	{ 
		"catppuccin/nvim", 
		name = "catppuccin", 
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				transparent_background = true
			})
		end
	}

}


