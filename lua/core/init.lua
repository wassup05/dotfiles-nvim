require("core.options")
require("core.keymaps")
require("core.autocmd")
require("core.diagnostics")

if vim.g.neovide then
	require("core.neovide")
end
