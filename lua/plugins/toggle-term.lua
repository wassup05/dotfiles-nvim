return {
	"akinsho/toggleterm.nvim",
	version = "*",
	cmd = "ToggleTerm",
	keys = {
		{ "<leader>h", ":ToggleTerm direction=horizontal size=15<CR>", { desc = "Open a horizontal terminal" } },
		{ "<leader>v", ":ToggleTerm direction=vertical size=65<CR>", { desc = "Open a vertical terminal" } },
		{ "<M-i>", ":ToggleTerm direction=float size=10<CR>", { desc = "Open a floating terminal" } },
	},
	opts = {
		start_in_insert = true,
		autochdir = true,
		float_opts = {
			border = "single",
			width = 80,
			height = 22,
		},
	},
}
