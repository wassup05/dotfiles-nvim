function P(t)
	print(vim.inspect(t))
	return t
end

vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Telescope neovim help tags" })
vim.keymap.set("n", "<leader>x", ":source %<cr>", { desc = "Execute (source) the current file" })
vim.keymap.set("n", "<leader><leader>t", function()
	vim.cmd("Lazy load plenary.nvim")
	vim.cmd("PlenaryBustedFile %")
end, { desc = "Test the current file" })
