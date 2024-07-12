local M = {}

function M.input(path)
  local list = vim.fn.getcompletion(path .. "*", "file");
  table.insert(list, 1, "back 󰌍");
  vim.ui.select(list, {
      prompt = "Enter an Input",
    },
    function(choice)
      if choice == nil then
        vim.cmd("Telescope fd")
      elseif choice == "back 󰌍" then
        local reverse_choice = string.reverse(path)
        local pos = string.find(reverse_choice, "/", 2, true)
        local final_path = string.sub(path, 1, pos + 1)
        M.input(final_path)
      elseif vim.fn.isdirectory(choice) ~= 0 then
        M.input(choice)
      else
        vim.cmd("e " .. choice)
      end
    end
  )
end

function M.startup()
  local argc = vim.fn.argc()
  local argv = vim.v.argv[3]

  if argc == 0 then
    vim.defer_fn(
      function()
        vim.ui.input({ prompt = "Enter Filename:" }, function(str)
          if str == nil then
            vim.cmd("qa")
          end
          vim.cmd("e " .. str)
        end)
      end,
      0
    )
  elseif argc == 1 and (vim.fn.isdirectory(argv) ~= 0) then
    vim.defer_fn(function()
      vim.cmd("Telescope fd")
    end, 0)
  end
end

return M
