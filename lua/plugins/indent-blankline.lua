return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = function()
		local highlight = {
			"Indent1",
			"Indent2",
			"Indent3",
			"Indent4",
			"Indent5",
			"Indent6",
		}

		return {
			indent = {
				char = "│",
				tab_char = "│",
				highlight = highlight,
			},
			scope = {
				enabled = false,
				highlight = "IblScope",
				show_start = false,
				show_end = false,
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"Trouble",
					"lazy",
					"mason",
				},
			},
		}
	end,
	config = function(_, opts)
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "Indent1", { fg = "#7A3E42" })
			vim.api.nvim_set_hl(0, "Indent2", { fg = "#7A6A3E" })
			vim.api.nvim_set_hl(0, "Indent3", { fg = "#4E7A4E" })
			vim.api.nvim_set_hl(0, "Indent4", { fg = "#3E6F7A" })
			vim.api.nvim_set_hl(0, "Indent5", { fg = "#3E5F7A" })
			vim.api.nvim_set_hl(0, "Indent6", { fg = "#6A4E7A" })

			vim.api.nvim_set_hl(0, "IblScope", { fg = "#A0A0A0", bold = true })
		end)

		require("ibl").setup(opts)
	end,
}
