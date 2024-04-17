require('nvim-tree').setup({
  renderer = {
    icons = {
      glyphs = {
        git = {
          staged = "✓",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "D",
          ignored = "I",
        },
      },
    },
  },
})

