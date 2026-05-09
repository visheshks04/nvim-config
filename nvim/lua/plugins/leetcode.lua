return {
  "kawre/leetcode.nvim",
  -- build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
  dependencies = {
    -- include a picker of your choice, see picker section for more details
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    lang = "python3", -- ya python3 jo tu use kar raha hai
    storage = {
      home = vim.fn.expand("~/code/dsa/leetcode")
    },
  }
}
