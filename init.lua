require("keybindings")
require("lazynvim-init")
require("lsp.config")

vim.o.number = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.shiftwidth = 4

vim.cmd[[colorscheme catppuccin]]
--vim.cmd[[colorscheme tokyonight]]
