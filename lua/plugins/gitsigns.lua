return {
	"lewis6991/gitsigns.nvim",
	event = "LazyFile",
	keys = {
		{ "[h", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Jump to previous git hunk" } },
		{ "]h", "<cmd>Gitsigns next_hunk<cr>", { desc = "Jump to next git hunk" } },
		{ "<leader>gl", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle current line git blame" } },
	},
	opts = {
		signs = {
			delete = { text = "󰍵" },
			changedelete = { text = "󱕖" },
		},
	},
}
