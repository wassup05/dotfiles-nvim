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

keymap("t", "<esc>", [[<C-\><C-n>]])
keymap("t", "<C-h>", [[<C-\><C-n><C-W>h]])
keymap("t", "<C-j>", [[<C-\><C-n><C-W>j]])
keymap("t", "<C-k>", [[<C-\><C-n><C-W>k]])
keymap("t", "<C-l>", [[<C-\><C-n><C-W>l]])

keymap("n", "<leader>la", ":Lazy load all<CR>", { desc = "Load all the plugins" })

-- Themes
keymap("n", "<leader>th", function()
	vim.cmd("TransparentDisable")
	vim.cmd("Telescope colorscheme")
	vim.cmd("Lazy load all")
end, { desc = "Telescope theme switcher" })

-- Normal
keymap("n", "<leader>nh", ":nohl<CR>", { desc = "Remove search highlights" })

vim.api.nvim_create_user_command("ConfigOpen", "e ~/.config/nvim/init.lua", {})

-- Quickfix list
keymap("n", "[q", ":cp<CR>", { desc = "Previous Quickfix entry" })
keymap("n", "]q", ":cn<CR>", { desc = "Next Quickfix entry" })

-- Loclist
keymap("n", "[l", ":lprev<CR>", { desc = "Previous Loclist entry" })
keymap("n", "]l", ":lnext<CR>", { desc = "Next Loclist entry" })

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = "Switch window left" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Switch window down" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Switch window up" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Switch window right" })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase size verically" })
keymap("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease size vertically" })
keymap("n", "<C-Left>", ":vertical resize +2<CR>", { desc = "Increase size horizontally" })
keymap("n", "<C-Right>", ":vertical resize -2<CR>", { desc = "Decrease size horizontally" })

-- Splits
keymap("n", "<leader>sh", ":sp<CR>", { desc = "Split horizontally" })
keymap("n", "<leader>sv", ":vsp<CR>", { desc = "Split vertically" })
keymap("n", "<leader>sx", ":close<CR>", { desc = "Close the split" })

-- Tabs
keymap("n", "<leader>to", ":tabnew<CR>", { desc = "New Tab" })
keymap("n", "<leader>tx", ":tabclose<CR>", { desc = "Close Tab" })
keymap("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" })
keymap("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" })

-- Navigate buffers
keymap("n", "<Tab>", ":bnext<CR>", { desc = "Next Buffer" })
keymap("n", "<S-Tab>", ":bprev<CR>", { desc = "Previous Buffer" })
keymap("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })

-- Indent the whole file
keymap("n", "<leader>i", "GVgg=0", { desc = "Indent the whole file" })

-- For jumping half page up or down in a neat way
keymap("n", "<C-d>", "<C-d>zz", { desc = "Jump Half a page down centered" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Jump Half a page up centered" })

-- Lazy
keymap("n", "<leader>lz", "<cmd>Lazy<cr>", { desc = "Open Lazy UI" })

-- Insert

-- Visual --

-- Visual Block --
