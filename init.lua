local colorscheme = "ayu-mirage"

vim.loader.enable()
vim.g.loaded_python3_provider = 0

require("core")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("custom")

require("lazy").setup({
	{ import = "plugins.themes" },
	{ import = "plugins" },
	{ import = "extras" },
	{ import = "custom.plugins" },
}, {
	defaults = { lazy = true },
	install = {
		colorscheme = { colorscheme },
	},
	ui = {
		border = "rounded",
		title = "Lazy",
	},
	dev = {
		path = "~/develop/projects/neovim",
		fallback = false,
	},
	rocks = {
		hererocks = false,
		enabled = false,
	},
	performance = {
		cache = {
			enabled = true,
		},
		rtp = {
			disabled_plugins = {
				"matchit",
				"matchparen",
				"2html_plugin",
				"tohtml",
				"getscript",
				"getscriptPlugin",
				"gzip",
				"logipat",
				"netrw",
				"netrwPlugin",
				"netrwSettings",
				"netrwFileHandlers",
				"tar",
				"tarPlugin",
				"rrhelper",
				"spellfile_plugin",
				"vimball",
				"vimballPlugin",
				"zip",
				"zipPlugin",
				-- "tutor",
				"rplugin",
				"syntax",
				"synmenu",
				"optwin",
				"compiler",
				"bugreport",
				"ftplugin",
			},
		},
		change_detection = {
			notify = false,
			enabled = false,
		},
	},
})

vim.opt.wildignore:append({
	"blue.vim",
	"darkblue.vim",
	"delek.vim",
	"desert.vim",
	"elflord.vim",
	"evening.vim",
	"industry.vim",
	"habamax.vim",
	"koehler.vim",
	"lunaperche.vim",
	"morning.vim",
	"murphy.vim",
	"pablo.vim",
	"peachpuff.vim",
	"quiet.vim",
	"ron.vim",
	"shine.vim",
	"slate.vim",
	"sorbet.vim",
	"retrobox.vim",
	"torte.vim",
	"wildcharm.vim",
	"zaibatsu.vim",
	"zellner.vim",
})

vim.cmd("colorscheme " .. colorscheme)
