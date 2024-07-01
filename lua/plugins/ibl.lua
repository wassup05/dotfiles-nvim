return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "VimEnter",
  opts = {
    scope = { show_start = false, show_end = false },
    indent = {
      char = "│",
      tab_char = "│",
    },
  },
}
