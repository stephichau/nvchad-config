-- This file  needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig

local M = {}

M.ui = {
	theme = "yoru",

  nvdash = {
    load_on_startup = true,
  },

  telescope = { style = "bordered" }, -- borderless, bordered

  hl_override = {
    DiffAdd = {
      fg = "green",
    },

    DiffAdded = {
      fg = "green",
    },

    DiffChange = {
      fg = "blue",
    },

    DiffChangeDelete = {
      fg = "red",
    },

    DiffModified = {
      fg = "blue",
    },

    DiffDelete = {
      fg = "red",
    },

    DiffRemoved = {
      fg = "red",
    },
  },

  statusline = {
    theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    order = nil,
    modules = nil,
  },

  cheatsheet = { theme = "simple" },
}

return M

