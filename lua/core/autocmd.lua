local autocmd = vim.api.nvim_create_autocmd

autocmd("TextYankPost", {
	desc = "highlight when yanking text",
	group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),

	callback = function()
		vim.highlight.on_yank()
	end,
})

autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("user_lsp_attach", { clear = true }),
	callback = function(event)
		-- local opts = { buffer = event.buf }

		vim.keymap.set("n", "gd", function()
			-- vim.lsp.buf.definition()
			vim.cmd("Telescope lsp_definitions")
		end, { buffer = event.buf, desc = "LSP Go to definition" })
		vim.keymap.set("n", "gD", function()
			vim.lsp.buf.declaration()
		end, { buffer = event.buf, desc = "LSP Go to declaration" })
		vim.keymap.set("n", "gT", function()
			-- vim.lsp.buf.type_definition()
			vim.cmd("Telescope lsp_type_definitions")
		end, { buffer = event.buf, desc = "LSP Go to type definition" })
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, { buffer = event.buf, desc = "LSP Hover documentation" })
		vim.keymap.set("n", "<leader>ws", function()
			-- vim.lsp.buf.workspace_symbol()
			vim.cmd("Telescope lsp_dynamic_workspace_symbols")
		end, { buffer = event.buf, desc = "LSP show workspace symbols" })
		vim.keymap.set("n", "<leader>d", function()
			vim.diagnostic.open_float()
		end, { buffer = event.buf, desc = "LSP open diagnostic float" })
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_next()
		end, { buffer = event.buf, desc = "LSP go to next diagnostic" })
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_prev()
		end, { buffer = event.buf, desc = "LSP go to previous diagnostic" })
		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, { buffer = event.buf, desc = "LSP open code actions" })
		vim.keymap.set("n", "<leader>lf", function()
			vim.lsp.buf.format()
		end, { buffer = event.buf, desc = "LSP format the codebase" })
		vim.keymap.set("n", "<leader>gr", function()
			-- vim.lsp.buf.references()
			vim.cmd("Telescope lsp_references")
		end, { buffer = event.buf, desc = "LSP open references" })
		vim.keymap.set("n", "<leader>rn", function()
			vim.lsp.buf.rename()
		end, { buffer = event.buf, desc = "LSP smart rename" })
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, { buffer = event.buf, desc = "LSP signature help" })
	end,
})

-- Display diagnostics as virtual text only if not in insert mode
autocmd("InsertEnter", {
	pattern = "*",
	callback = function()
		vim.diagnostic.config({
			virtual_text = false,
			signs = false,
		})
	end,
})

autocmd("InsertLeave", {
	pattern = "*",
	callback = function()
		vim.diagnostic.config({
			virtual_text = true,
			signs = true,
		})
	end,
})
