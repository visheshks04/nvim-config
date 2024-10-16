vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true
vim.wo.relativenumber = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.guicursor = "i-ci-ve:hor30"
vim.opt.laststatus=0

vim.api.nvim_set_keymap("n", "<Space>", "Nop", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Space>", "Nop", { noremap = true, silent = true })
