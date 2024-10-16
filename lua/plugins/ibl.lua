return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = "InsertEnter",
	opts = {
		scope = { show_start = true, show_end = false },
		indent = {
			char = "│",
			tab_char = "│",
		},
	},
}
