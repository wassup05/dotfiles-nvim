local autocmd = vim.api.nvim_create_autocmd

autocmd(
   "TextYankPost",
   {
      desc = "highlight when yanking text",
      group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),


      callback = function()
         vim.highlight.on_yank()
      end,
   }
)

autocmd('LspAttach', {
   group = vim.api.nvim_create_augroup('user_lsp_attach', { clear = true }),
   callback = function(event)
      local opts = { buffer = event.buf }

      vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end, opts)
      vim.keymap.set('n', 'gD', function() vim.lsp.buf.declaration() end, opts)
      vim.keymap.set('n', 'gT', function() vim.lsp.buf.type_definition() end, opts)
      vim.keymap.set('n', 'K', function() vim.lsp.buf.hover() end, opts)
      vim.keymap.set('n', '<leader>ws', function() vim.lsp.buf.workspace_symbol() end, opts)
      vim.keymap.set('n', '<leader>vd', function() vim.diagnostic.open_float() end, opts)
      vim.keymap.set('n', '[d', function() vim.diagnostic.goto_next() end, opts)
      vim.keymap.set('n', ']d', function() vim.diagnostic.goto_prev() end, opts)
      vim.keymap.set('n', '<leader>ca', function() vim.lsp.buf.code_action() end, opts)
      vim.keymap.set('n', '<leader>cf', function() vim.lsp.buf.format() end, opts)
      vim.keymap.set('n', '<leader>rr', function() vim.lsp.buf.references() end, opts)
      vim.keymap.set('n', '<leader>rn', function() vim.lsp.buf.rename() end, opts)
      vim.keymap.set('i', '<C-h>', function() vim.lsp.buf.signature_help() end, opts)
   end,
})
