return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        layout_strategy = "horizontal",
        layout_config = {
          width = 0.9,           -- overall width: 90% of screen
          height = 0.9,          -- overall height: 80% of screen
          horizontal = {
            preview_cutoff = 0,  -- always show preview
            preview_width = 0.7, -- preview pane uses ~70%
          },
          vertical = {
            preview_cutoff = 0,
          },
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<C-f><C-f>", builtin.live_grep, {})
    vim.keymap.set("n", "<C-q>", builtin.help_tags, {})

    -- git
    vim.keymap.set("n", "<leader>com", builtin.git_commits, {})
    vim.keymap.set("n", "<leader>bra", builtin.git_branches, {})
    vim.keymap.set("n", "<leader>sta", builtin.git_status, {})
    vim.keymap.set("n", "<leader>sh", builtin.git_stash, {})
  end,
}
