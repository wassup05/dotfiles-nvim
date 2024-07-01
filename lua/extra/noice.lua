return {
  enabled = true,
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
    views = {
      notify = {
        replace = true, -- HERE
      },
    },
    cmdline = {
      view = "cmdline_popup",
    },
    lsp = {
      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      progress = {
        enabled = true,
        view = "notify",
        throttle = 10/30,
      },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
    presets = {
      command_palette = false, -- position the cmdline and popupmenu together
      inc_rename = true, -- enables an input dialog for inc-rename.nvim
      lsp_doc_border = true, -- add a border to hover docs and signature help
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
}
