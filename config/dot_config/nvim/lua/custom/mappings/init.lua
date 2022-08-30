local M = {}

local keymaps = require "custom.mappings.keymaps"
local none = ""

M.disabled = {
  n = {
    ["<S-b>"] = none,
    ["<leader>bc"] = none,
    ["<C-e>"] = none,
  }
}

M.remap = {
  n = {
    ["<C-n>"] = keymaps.general.newBuffer,
    ["<C-w>"] = keymaps.general.closeBuffer,
    ["<A-e>"] = keymaps.nvimtree.toggle,
    ["<C-p>"] = keymaps.telescope.findFiles,
    ["glg"] = keymaps.telescope.gitLog,
    ["gst"] = keymaps.telescope.gitStatus,
    ["<A-`>"] = keymaps.nvterm.horizontalTerm,
    ["<C-B>"] = keymaps.gitsigns.blame,
  },
  t = {
    ["<A-`>"] = keymaps.nvterm.horizontalTerm,
  }
}

return M
