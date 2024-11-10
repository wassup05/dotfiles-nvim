return {
	"neovim/nvim-lspconfig",
	event = "LazyFile",
	keys = {
		{ "<leader>li", "<cmd>LspInfo<cr>", { desc = "Open LspInfo" } },
	},
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},

	config = function()
		local lsp = require("lspconfig")
		local cmp = require("cmp_nvim_lsp")

		local servers = {
			"lua_ls",
			"clangd",
			"pyright",
			"rust_analyzer",
			"gopls",
			"html",
			"cssls",
			"ts_ls",
			"ruby_lsp",
			-- "fortls",
		}

		local capabilities = vim.lsp.protocol.make_client_capabilities()

		capabilities = vim.tbl_deep_extend("force", capabilities, cmp.default_capabilities())

		capabilities.textDocument.completion.completionItem = {
			documentationFormat = { "markdown", "plaintext" },
			snippetSupport = true,
			preselectSupport = true,
			insertReplaceSupport = true,
			labelDetailsSupport = true,
			deprecatedSupport = true,
			commitCharactersSupport = true,
			tagSupport = { valueSet = { 1 } },
			resolveSupport = {
				properties = {
					"documentation",
					"detail",
					"additionalTextEdits",
				},
			},
		}

		for _, server in pairs(servers) do
			local status, settings = pcall(require, "plugins.lsp-settings." .. server)
			if not status then
				settings = {}
			end

			lsp[server].setup({
				capabilities = capabilities,
				settings = settings,
			})
		end
	end,
}
