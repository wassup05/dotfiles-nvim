return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    plugins = false
  },
  config = function ()
    vim.cmd("colorscheme tokyonight-moon")
  end
}
