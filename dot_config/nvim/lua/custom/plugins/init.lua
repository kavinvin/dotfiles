local M = {}

local configs = require "custom.plugins.configs"

M.override = {
  ["williamboman/mason.nvim"] = configs.mason,
  ["nvim-treesitter/nvim-treesitter"] = configs.treesitter,
  ["lewis6991/gitsigns.nvim"] = configs.gitsigns,
}

M.user = {
  ["ethanholz/nvim-lastplace"] = {},
  ["ruifm/gitlinker.nvim"] = configs.gitlinker,
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end
  },
  ["chakrit/vim-thai-keys"] = {},
}

return M
