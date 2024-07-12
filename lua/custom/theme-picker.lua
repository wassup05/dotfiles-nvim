local M = {}

function M.pickTheme()
  vim.ui.select(vim.fn.getcompletion("", "color"), { prompt = "Choose a colorscheme:" }, function(choice)
    if choice ~= nil then
      vim.cmd("colorscheme ".. tostring(choice))
    end
  end
  )
end

return M
