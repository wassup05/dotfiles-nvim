return {
	"Shatur/neovim-ayu",
	config = function()
		require("ayu").setup({
			overrides = {
				CursorLine = { bg = "#282b44" },
				LineNr = { fg = "#59c2ff" },
			},
		})
	end,
}
