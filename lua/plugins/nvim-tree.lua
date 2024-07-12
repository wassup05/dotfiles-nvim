return {
  "nvim-tree/nvim-tree.lua",
  cmd = "NvimTreeToggle",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    hijack_unnamed_buffer_when_opening = false,
    hijack_cursor = true,
    respect_buf_cwd = false,
    sync_root_with_cwd = true,
    sort = {
      sorter = "modification_time",
    },
    view = {
      preserve_window_proportions = true,
      -- relativenumber = true,
      float = {
        enable = false,
      },
      width = 32,
    },
    renderer = {
      indent_markers = {
        enable = true,
      },
      icons = {
        web_devicons = {
          folder = {
            enable = false,
          },
        },
        git_placement = "after",
        show = {
          file = true,
          folder = true,
          folder_arrow = true,
          git = true,
          modified = true,
          diagnostics = true,
          bookmarks = true,
        },
      },
    },
    diagnostics = {
      enable = true,
    },
    modified = {
      enable = true,
    },
    actions = {
      use_system_clipboard = false,
    },
    git = {
      show_on_dirs = false,
      show_on_open_dirs = false,
    },
    update_focused_file = {
      enable = true,
      update_root = {
        enable = false,
        ignore_list = {},
      },
    },
  },
  filters = {
    enable = true,
    dotfiles = true,
  },
}
