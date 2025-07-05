vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.guicursor = "i-ci-ve:hor30"
vim.opt.laststatus=0

vim.api.nvim_set_keymap("n", "<Space>", "Nop", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Space>", "Nop", { noremap = true, silent = true })

vim.keymap.set("n", "<C-j>", ":m .+1<CR>==") -- move line up(n)
vim.keymap.set("n", "<C-k>", ":m .-2<CR>==") -- move line down(n)
vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- vim.keymap.set("n", "<leader>t", ":70vsplit | term<CR>") -- open a terminal on left
