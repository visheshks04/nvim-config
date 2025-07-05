return {
  {
    "echasnovski/mini.comment",
    version = false,
    config = function()
      require("mini.comment").setup()
    end,
  },
  {
    "echasnovski/mini.surround",
    version = false,
    config = function()
      require("mini.surround").setup()
    end,
  },
  {
    "echasnovski/mini.splitjoin",
    version = false,
    config = function()
      local miniSplitJoin = require("mini.splitjoin")
      miniSplitJoin.setup({
        mappings = {toggle = ""}
      })
      vim.keymap.set({"n", "x"}, "sj", function() miniSplitJoin.join() end, {desc = "Join argument"})
      vim.keymap.set({"n", "x"}, "sk", function() miniSplitJoin.split() end, {desc = "Split argument"})
    end,
  },
  {
    "echasnovski/mini.files",
    version = "*",
    config = function()
      require("mini.files").setup({
        -- Options you can set as per need
        windows = {
          max_number = 1,
          preview = true,
        },
      })

      -- Keymap to toggle mini.files
      vim.keymap.set("n", "<leader>e", function()
        require("mini.files").open(vim.api.nvim_buf_get_name(0))
      end, { desc = "Toggle Mini Files" })
    end,
  },
}
