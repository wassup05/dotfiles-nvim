return {
	enabled = true,
	"stevearc/conform.nvim",
	cmd = { "ConformInfo" },
	keys = {
		{ "<leader>cf", ":lua require('conform').format()<CR>", { desc = "Formats the file using Conform" } },
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			go = { "gofumpt" },
		},
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			timeout_ms = 500,
		},
	},
}
