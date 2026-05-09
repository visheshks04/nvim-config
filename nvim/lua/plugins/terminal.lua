return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<C-n>]],
      direction = "float",
      float_opts = {
        border = "curved",  -- You can use "single", "double", "curved", "shadow", etc.
      },
      shade_terminals = true,
      persist_size = true,
      persist_mode = true,  -- Keeps terminal mode (insert/normal) same as when you closed
    })
  end,
}

