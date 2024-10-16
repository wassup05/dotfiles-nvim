return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	lazy = false,
	config = function()
		require("lualine").setup {
			options = {
				globalstatus = true,
				theme = 'auto',
				section_separators = { left = '', right = '' },
			},
			sections = {
				lualine_a = {
					{ 'mode',
						icons_enabled = true,
						icon = {
							"",
							align = "left"
						},
						separator = { left = "", right = " " }
					}
				},
				lualine_b = {
					{ "filetype", icon_only = true, separator = "", padding = { left = 0, right = 0 } },
					{ "filename", symbols = {
						modified = "",
						readonly = "󰌾",
						unnamed = " No Name",
						newfile = " Empty",
					},
						separator = {
							left = "", right = ""
						}
					}
				},
				lualine_c = {
					{ 'branch', icon = { '󰘬', align = 'left' }, separator = { left = "", right = "" } },
					{
						"diff",
						symbols = {
							added = " ",
							modified = " ",
							removed = " ",
						}
					},
				},
				lualine_x = {
					function()
						for _, client in ipairs(vim.lsp.get_clients()) do
							if client.attached_buffers[vim.api.nvim_win_get_buf(0)] then
								return (vim.o.columns > 100 and "   LSP ~ " .. client.name .. " ") or "   LSP "
							end
						end

						return ""
					end
				},
				lualine_y = {
					{
						function()
							local name = vim.loop.cwd()
							name = (name:match "([^/\\]+)[/\\]*$" or name) .. " "

							return name
						end,
						icons_enabled = true,
						icon = {
							" ",
							align = "left",
						},
						separator = { left = "", right = "" },
						padding = 0
					},
				},
				lualine_z = {
					{
						"progress",
						icons_enabled = true,
						icon = {
							"󰛾",
							align = "left"
						},
						separator = { left = "" },
					}
				}
			},
		}
	end,
}
