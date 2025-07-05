return {
  "mbbill/undotree",
  config = function()
    vim.keymap.set("n", "<leader>ut", ":UndotreeToggle<CR>", { noremap = true, silent = true })
  end
}
