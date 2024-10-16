return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	cmd = "Telescope",
	keys = {
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find Files" } },
		{ "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Telescope String grep" } },
		{ "<leader>bf", "<cmd>Telescope buffers<cr>", { desc = "Telescope find buffers" } },
		{
			"<leader>fb",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			{ desc = "Telescope fuzzily find in buffers" },
		},
		{ "<leader>gf", "<cmd>Telescope git_files<cr>", { desc = "Telescope git files" } },
		{ "<leader>tt", "<cmd>TodoTelescope<cr>", { desc = "Telescope TODO's" } },
		{ "<leader>tb", "<cmd>Telescope builtin<cr>", { desc = "Telescope Builtins" } },
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		pickers = {
			colorscheme = {
				enable_preview = true,
			},
		},
	},
}
