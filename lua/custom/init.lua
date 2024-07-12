require("custom.lazy_file").lazy_file()
require("custom.essentials")






-- Theme picker
vim.keymap.set("n","<leader>th", function() require("custom.theme-picker").pickTheme() end)
