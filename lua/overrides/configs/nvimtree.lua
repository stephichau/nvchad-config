vim.cmd.highlight("NvimTreeGitStaged guifg=#aff5b4")
vim.cmd.highlight("NvimTreeGitDirty guifg=#f7d88b")
vim.cmd.highlight("NvimTreeGitNew guifg=#aff5b4")
vim.cmd.highlight("NvimTreeGitRenamed guifg=#aff5b4")

return {
  view = {
    number = true,
  },
  renderer = {
    highlight_git = true,
    special_files = {
      "README.md",
      "Makefile",
      "readme.md",
    },
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = true,
        },
        folder = {
          enable = true,
          color = true,
        },
      },
      modified_placement = "after",
      padding = " ",
      glyphs = {
        git = {
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "D",
          ignored = "I",
          unstaged = "M",
        },

        default = "󰈚",
        symlink = "",
        folder = {
          default = "",
          empty = "",
          empty_open = "",
          open = "",
          symlink = "",
          symlink_open = "",
          arrow_open = "",
          arrow_closed = "",
        },
      },
    },
  },

  filesystem_watchers = {
    enable = true,
    debounce_delay = 50,
    ignore_dirs = {"node_modules"},
  },
}

