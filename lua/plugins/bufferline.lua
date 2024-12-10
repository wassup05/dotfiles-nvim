return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "BufAdd",
	opts = {
		options = {
			mode = "buffers",
			diagnostics = "nvim_lsp",
			color_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			separator_style = "thin",
			always_show_bufferline = false,
		},
	},
}
