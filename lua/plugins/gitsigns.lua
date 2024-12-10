return {
	"lewis6991/gitsigns.nvim",
	event = "LazyFile",
	keys = {
    {"<leader>gb", "<cmd>Gitsigns blame<CR>", { desc = "Git blame" }},
    {"<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Git diffthis file" }},
		{ "<leader>gl", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle current line git blame" } },
	},
	opts = {
		signs = {
			delete = { text = "󰍵" },
			changedelete = { text = "󱕖" },
		},
	},
}
