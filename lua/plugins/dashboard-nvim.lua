return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({

			shortcut_type = "number",
			hide = {
				statusline = false,
			},
			config = {
        disable_move=true,
				week_header = { enable = true },
				shortcut = {
				},
			},
		})
	end,
	dependencies = { { "nvim-tree/nvim-web-devicons" } },
}
