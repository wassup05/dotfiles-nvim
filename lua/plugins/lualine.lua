return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  lazy = false,
  config = function()
    require("lualine").setup {
      options = {
        globalstatus = true,
        theme = 'auto',
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diagnostics' },
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", symbols = {
            modified = "",
            readonly = "",
            unnamed = "---",
            newfile = "󰎔",
          },
            separator = " | "
          }, {
          function()
            local str = ""
            local servers = vim.lsp.get_clients()
            for _, server in pairs(servers) do
              str = str .. "   " .. server.name
            end
            return str
          end,
        }
        },
        lualine_x = {
          {
            "diff",
            symbols = {
              added = " ",
              modified = " ",
              removed = " ",
            }
          },
        },
        lualine_y = {
          { "progress", separator = " |",                 padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1 } },
        },
        lualine_z = {
          function()
            return "  " .. os.date("%R")
          end,
        }
      },
    }
  end,
}
