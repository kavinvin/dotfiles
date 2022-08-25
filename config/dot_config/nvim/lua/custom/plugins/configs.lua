local M = {}

M.treesitter = {
  ensure_installed = {
    "lua",
    "html",
    "css",
  }
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "typescript-language-server",
    "pyright",
    "haskell-language-server",
  }
}

M.gitlinker = {
  event = "BufRead",
  requires = 'nvim-lua/plenary.nvim',
  config = function()
    require("gitlinker").setup {
      name = "Link",
      opts = {
        -- adds current line nr in the url for normal mode
        add_current_line_on_normal_mode = true,
        -- callback for what to do with the url
        action_callback = require("gitlinker.actions").open_in_browser,
        -- print the url after performing the action
        print_url = false,
        -- mapping to call url generation
        mappings = "<leader>gy",
      },
      callbacks = {
        ["github.agodadev.io"] = require "gitlinker.hosts".get_github_type_url
      }
    }
  end,
}

M.gitsigns = {
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
    delay = 1,
    ignore_whitespace = false,
  },
  current_line_blame_formatter = '<author>, <author_time:%d-%m-%y> (<abbrev_sha>)',
}

return M
