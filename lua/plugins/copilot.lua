return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.keymap.set("i", "<Tab>", 'copilot#Accept("<Tab>")', { expr = true, replace_keycodes = false, silent = true })
    vim.keymap.set("i", "<C-]>", "<Plug>(copilot-dismiss)")
  end,
}
