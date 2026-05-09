vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.wo.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.clipboard = "unnamedplus"

vim.opt.guicursor = "i-ci-ve:hor30"
vim.opt.laststatus=0
vim.opt.wrap = true
vim.opt.showmatch = true
vim.opt.fillchars = {
  vert = "│",
  eob = " ",
}
vim.opt.winblend=0
vim.opt.termguicolors = true

local function set_transparent_bg()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
end

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = set_transparent_bg,
})

set_transparent_bg()

vim.api.nvim_set_keymap("n", "<Space>", "Nop", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<Space>", "Nop", { noremap = true, silent = true })

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- vim.keymap.set("n", "<leader>t", ":70vsplit | term<CR>") -- open a terminal on left
