function P(t)
  print(vim.inspect(t))
  return t
end

local function unload()
  vim.ui.input({
    prompt = "Enter the package to be unloaded:"
  }, function(choice)
    if choice ~= nil or choice ~= "" then
      package.loaded[tostring(choice)] = nil
    end
  end)
end

vim.keymap.set("n", "<leader>x", "<cmd>w<cr><cmd>source %<cr>")
vim.keymap.set("n", "<leader>tx", "<cmd>w<cr><cmd>PlenaryBustedFile %<cr>")
vim.keymap.set("n", "<leader>hh", "<cmd>Telescope help_tags<cr>")
vim.keymap.set("n", "<leader>ul", function() unload() end)

return 7
