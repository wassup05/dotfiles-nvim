return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require("lualine").setup{
      options = {
        globalstatus = true,
        theme = 'dracula',
      },
      sections = {
    lualine_a = {'mode','searchcount'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename','buffers'},
    lualine_x = {'encoding', 'fileformat', 'filetype','filesize'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
    }
  end,
}
