return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup()
    vim.keymap.set('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
    vim.keymap.set('n', "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
    vim.keymap.set('n', '<leader>hr', ":Gitsigns reset_hunk<CR>", {})
  end,
}
