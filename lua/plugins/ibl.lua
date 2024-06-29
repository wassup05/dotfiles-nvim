return { 
  "lukas-reineke/indent-blankline.nvim", 
  main = "ibl",
  event = "InsertEnter",
  opts = {
    scope = { enabled = false },
   indent = { char = "┊" },
  }, 
}
