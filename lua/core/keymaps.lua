-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

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
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
keymap("n", "<A-j>", ":m .+1<CR>==", opts)

-- Indent the whole file
keymap("n","<leader>i","GVgg=0<C-o><C-o>")

-- Neotree
keymap("n","<leader>e","<cmd>Neotree float<cr>")
keymap("n","<leader>E","<cmd>Neotree filesystem reveal left<cr>")

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
keymap("n","<leader>ls","<cmd>LspStart<cr>")

-- Gitsigns
keymap("n","[h","<cmd>Gitsigns prev_hunk<cr>")
keymap("n","]h","<cmd>Gitsigns next_hunk<cr>")
keymap("n","<leader>gl","<cmd>Gitsigns toggle_current_line_blame<cr>")

-- Insert


-- Visual --

-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

keymap("v", "p", '"_dP', opts)

-- Visual Block --

-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)
