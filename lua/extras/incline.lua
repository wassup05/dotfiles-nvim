return {
	"b0o/incline.nvim",
	event = "VeryLazy",
	enabled = false,
	opts = {
		render = function(props)
			local function get_diagnostic_label()
				local icons = { error = ' ', warn = ' ', info = ' ', hint = ' ' }
				local label = {}

				for severity, icon in pairs(icons) do
					local n = #vim.diagnostic.get(props.buf, { severity = vim.diagnostic.severity[string.upper(severity)] })
					if n > 0 then
						table.insert(label, { icon .. n .. ' ', group = 'DiagnosticSign' .. severity })
					end
				end
				if #label > 0 then
					table.insert(label, { ' ' })
				else
					table.insert(label, { 'No Suggestions!', guifg = "red", guibg = "green" })
				end
				return label
			end

			return {
				{ get_diagnostic_label() },
			}
		end,
	},
}
