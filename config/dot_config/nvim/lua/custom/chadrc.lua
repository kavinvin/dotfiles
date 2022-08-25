local M = {}

M.mappings = require "custom.mappings"
M.plugins = require "custom.plugins"

M.ui = {
  transparency = true,
  theme = "catppuccin",
  hl_add = {
    GitSignsCurrentLineBlame = {
      fg = "yellow",
    },
  }
}

return M
