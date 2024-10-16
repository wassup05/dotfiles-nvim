return {
	"goolord/alpha-nvim",
	dependencies = { "echasnovski/mini.icons" },
	lazy = vim.fn.argc(-1) ~= 0,
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")

		startify.section.header.val = {
			[[                                   __                ]],
			[[      ___     ___    ___   __  __ /\_\    ___ ___    ]],
			[[     / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
			[[    /\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
			[[    \ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
			[[     \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
		}

		startify.section.top_buttons.val = {
			startify.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
		}
		startify.config.layout[1].val = 0
		startify.config.opts.margin = 3

		alpha.setup(startify.config)
	end,
}
