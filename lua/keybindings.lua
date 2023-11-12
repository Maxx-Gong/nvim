vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

-- map('模式','按键','映射为XX',opt)
map("n", "<C-j>", "9j", opt)
map("n", "<C-k>", "9k", opt)
map("n", "<leader>la", ":Lazy<CR>", opt)
map("n", "<leader>to", ":NvimTreeOpen<CR>", opt)
map("n", "<leader>ls", ":Mason<CR>", opt)
map("n", "<F5>", ":MarkdownPreview<CR>", opt)
map("n", "<F6>", ":MarkdownPreviewStop<CR>", opt)
map("n", "ss", ":vsp<CR>", opt)
map("n", "sc", "<C-w>c", opt)
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- Dashboard
map("n", "<leader>db", ":Dashboard<CR>", opt)

-- LSP
-- rename
map('n', '<leader>rn', '<cmd>lua xim.lsp.buf.rename()<CR>', opt)
-- code action
map('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opt)
-- go xx
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
-- diagnostic
map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
map('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
map('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
-- leader + =
--map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)
-- mapbuf('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opt)
-- mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
-- mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
-- mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opt)
map("n", "<leader>fg", ":Telescope live_grep<CR>", opt)

-- floaterm
map("n", "<S-F12>", ":FloatermNew<CR>", opt)
map("n", "<F12>", ":FloatermToggle<CR>", opt)
