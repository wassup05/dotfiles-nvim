return {
	"folke/todo-comments.nvim",
	event = "InsertEnter",
	keys = {
		{ "[t", "<cmd>lua require('todo-comments').jump_prev()<cr>", { desc = "Jump to previous TODO" } },
		{ "]t", "<cmd>lua require('todo-comments').jump_next()<cr>", { desc = "Jump to next TODO" } },
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	config = true,
	opts = {},
}
