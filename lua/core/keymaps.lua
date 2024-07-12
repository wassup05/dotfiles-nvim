-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h")
keymap("n", "<C-j>", "<C-w>j")
keymap("n", "<C-k>", "<C-w>k")
keymap("n", "<C-l>", "<C-w>l")

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>")
keymap("n", "<C-Down>", ":resize +2<CR>")
keymap("n", "<C-Left>", ":vertical resize +2<CR>")
keymap("n", "<C-Right>", ":vertical resize -2<CR>")

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>")
keymap("n", "<S-h>", ":bprevious<CR>")

-- Indent the whole file
keymap("n","<leader>i","GVgg=0")

-- For jumping half page up or down in a neat way
keymap("n","<C-d>","<C-d>zz")
keymap("n","<C-u>","<C-u>zz")

-- Nvim Tree
keymap("n","<leader>e","<cmd>NvimTreeToggle<cr>")

-- Todo comments
keymap("n","[t","<cmd>lua require('todo-comments').jump_prev()<cr>")
keymap("n","]t","<cmd>lua require('todo-comments').jump_next()<cr>")

-- Telescope 
keymap("n","<leader>ff","<cmd>Telescope find_files<cr>")
keymap("n","<leader>bf","<cmd>Telescope buffers<cr>")
keymap("n","<leader>fb","<cmd>Telescope current_buffer_fuzzy_find<cr>")
keymap("n","<leader>gf","<cmd>Telescope git_files<cr>")
keymap("n","<leader>tt","<cmd>TodoTelescope<cr>")

-- Lazy
keymap("n","<leader>lz","<cmd>Lazy<cr>")

-- Lsp
keymap("n","<leader>li","<cmd>LspInfo<cr>")

-- Gitsigns
keymap("n","[h","<cmd>Gitsigns prev_hunk<cr>")
keymap("n","]h","<cmd>Gitsigns next_hunk<cr>")
keymap("n","<leader>gl","<cmd>Gitsigns toggle_current_line_blame<cr>")

-- Color Picker
keymap("n","<leader>c","<cmd>Colortils picker<cr>")


-- Theme picker
keymap("n","<leader>th", function() require("custom.theme-picker").pickTheme() end)

-- Insert


-- Visual --

keymap("v", "p", '"_dP')

-- Visual Block --
