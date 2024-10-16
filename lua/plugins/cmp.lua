return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	enabled = true,
	dependencies = {
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			version = "v2.*",
		},

		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
		"hrsh7th/cmp-nvim-lua", -- nvim lsp
		"hrsh7th/cmp-buffer",
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		local kind_icons = {
			Namespace = "󰌗",
			Text = "󰉿",
			Method = "󰆧",
			Function = "󰆧",
			Constructor = "",
			Field = "󰜢",
			Variable = "󰀫",
			Class = "󰠱",
			Interface = "",
			Module = "",
			Property = "󰜢",
			Unit = "󰑭",
			Value = "󰎠",
			Enum = "",
			Keyword = "󰌋",
			Snippet = "",
			Color = "󰏘",
			File = "󰈚",
			Reference = "󰈇",
			Folder = "󰉋",
			EnumMember = "",
			Constant = "󰏿",
			Struct = "󰙅",
			Event = "",
			Operator = "󰆕",
			TypeParameter = "󰊄",
			Table = "",
			Object = "󰅩",
			Tag = "",
			Array = "[]",
			Boolean = "",
			Number = "",
			Null = "󰟢",
			Supermaven = "",
			String = "󰉿",
			Calendar = "",
			Watch = "󰥔",
			Package = "",
			Copilot = "",
			Codeium = "",
			TabNine = "",
		}

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview,noselect",
				keyword_length = 1,
			},
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			matching = {
				disallow_fullfuzzy_matching = false,
			},
			preselect = "None",
			mapping = cmp.mapping.preset.insert({
				["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<C-b>"] = cmp.mapping.scroll_docs(-1),
				["<C-f>"] = cmp.mapping.scroll_docs(1),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<C-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm({ select = false, behavior = cmp.ConfirmBehavior.Replace }),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "cmp_tabnine" },
				{ name = "nvim_lua" },
				{ name = "luasnip" }, -- snippets
				{ name = "buffer" },
				{ name = "path" }, -- file system paths
			}),

			formatting = {
				expandable_indicator = true,
				fields = { "menu", "abbr", "kind" },
				format = function(entry, vim_item)
					vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
					vim_item.menu = ({
						nvim_lsp = "[ls]",
						nvim_lua = "[nvim-ls]",
						luasnip = "[snippet]",
						path = "[path]",
						buffer = "[buffer]",
					})[entry.source.name]
					return vim_item
				end,
			},
			confirm_opts = {
				behavior = cmp.ConfirmBehavior.Replace,
				select = true,
			},
			window = {
				documentation = cmp.config.window.bordered(),
				completion = cmp.config.window.bordered(),
			},
			experimental = {
				ghost_text = false,
			},
		})

		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
	end,
}
