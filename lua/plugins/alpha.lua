return {
  'goolord/alpha-nvim',
  event = "VimEnter",
  config = function ()
    local alpha = require'alpha'
    local dashboard = require'alpha.themes.dashboard'
    dashboard.section.header.val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      [[                                                 ]],
      [[                                                 ]],
    }
    dashboard.section.buttons.val = {
      dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
      dashboard.button("SPC ee", "  Toggle file explorer", "<cmd>Neotree<CR>"),
      dashboard.button("SPC ff", "󰱼  Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "  Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button( "q", "󰅚  Quit NVIM" , ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end
};
