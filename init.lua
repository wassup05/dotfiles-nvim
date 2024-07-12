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

require("lazy").setup(
  {
    { import = "plugins" },
    { import = "extra" },
  },
  {
    defaults = { lazy = true },
    install = {
      colorscheme = { "tokyonight" }
    },
    ui = {
      border = "rounded",
      title = "Lazy",
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
      dev = {
        path = "~/dev/projects/neovim",
        pattern = {
          "neovim"
        }
      }
    }
  })
