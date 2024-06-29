return {
  "nvim-treesitter/nvim-treesitter",
  event = "InsertEnter",
  config = function()
    require('nvim-treesitter.configs').setup{
      ensure_installed = {"c", "lua", "vim", "vimdoc", "query","python","rust","go"},
      auto_install = true,
      highlight = {
        enable = true
      },
      indent = {
        enable = true
      }
    }
  end
}
