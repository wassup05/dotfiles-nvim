local signs = {
	{ name = "DiagnosticSignError", text = "" },
	{ name = "DiagnosticSignWarn", text = "" },
	{ name = "DiagnosticSignHint", text = "" },
	{ name = "DiagnosticSignInfo", text = "" },
}

for _, sign in pairs(signs) do
	vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
	virtual_text = {
		spacing = 4,
		source = "if_many",
		prefix = "●",
	},
	signs = true,
	update_in_insert = true,
	underline = false,
	severity_sort = true,
	float = {
		focusable = true,
		-- style = "minimal",
		border = "rounded",
		source = "if_many",
		header = "Diagnostic",
		prefix = "",
	},
}

vim.diagnostic.config(config)
