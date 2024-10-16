return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	keys = {
		{
			"<leader>b?",
			function()
				require("which-key").show({ global = false })
			end,
			{ desc = "Show all local Buffer keymaps" },
		},
		{
			"<leader>?",
			function()
				require("which-key").show({ global = true })
			end,
			{ desc = "Show ALL keymaps" },
		},
		opts = {},
	},
}
