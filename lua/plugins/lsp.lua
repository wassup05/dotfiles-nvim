return {
  "neovim/nvim-lspconfig",
  cmd="LspStart",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    local lsp = require("lspconfig")
    local cmp = require("cmp_nvim_lsp")

    local servers = {
      "clangd",
      "pyright",
      "rust_analyzer",
      "gopls",
      "tsserver",
    }

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    for _,server in pairs(servers) do

      lsp[server].setup({
        capabilities = capabilities,
      })

    end
  end
}
