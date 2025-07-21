return {
	{ "tpope/vim-fugitive" },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup({
				signs = {
					change = { text = "┃" },
					delete = { text = "✗" },
					topdelete = { text = "✗" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				signs_staged_enable = true,
			})
			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<CR>", {})
			vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {})
			vim.keymap.set("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", {})
			vim.keymap.set("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", {})
			vim.keymap.set("n", "<leader>hu", ":Gitsigns undo_stage_hund<CR>", {})
		end,
	},
}
