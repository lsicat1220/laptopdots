vim.o.number = true
vim.o.cursorline = true
vim.o.autoread = true
require("config.lazy")
require("keymaps")
vim.cmd("colorscheme catppuccin-frappe")
vim.o.rnu = true
vim.o.ts = 2
vim.o.hlsearch = false
vim.o.shiftwidth = 2
vim.o.winborder = "rounded"
vim.diagnostic.config({virtual_text = true})
vim.cmd.highlight('IndentLine guifg=#303030')
vim.cmd.highlight('IndentLineCurrent guifg=#606060')
		
