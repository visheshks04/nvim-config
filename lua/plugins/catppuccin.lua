return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			color_overrides = {
        mocha = { --these colors aren't exactly as they named, just hardcoded values that suited me
          rosewater = "#f5e0dc",
          flamingo = "#f2cdcd",
          pink = "#f5c2e7",
          mauve = "#EB5757",
          red = "#6EFFF8",
          maroon = "#CF256D",
          peach = "#CF256D",
          yellow = "#FABF46",
          green = "#CDFF5C",
          teal = "#94e2d5",
          sky = "#89dceb",
          sapphire = "#FABF46",
          blue = "#FABF46",
          lavender ="#D4D4D4",
          text = "#cdd6f4",
          subtext1 = "#bac2de",
          subtext0 = "#a6adc8",
          overlay2 = "#9399b2",
          overlay1 = "#7f849c",
          overlay0 = "#6c7086",
          surface2 = "#585b70",
          surface1 = "#45475a",
          surface0 = "#313244",
          base = "#1e1e2e",
          mantle = "#181825",
          crust = "#11111b",
        },
			},
		})
		vim.cmd.colorscheme("catppuccin")
		vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
	end,
}
