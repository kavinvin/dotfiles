local M = {}

M.general = {
  -- new buffer
  newBuffer = { "<cmd> enew <CR>", "new buffer" },

  -- close buffer + hide terminal buffer
  closeBuffer = {
    function()
      require("core.utils").close_buffer()
    end,
    "close buffer",
  },
}

M.nvimtree = {
  -- toggle file browser sidebar
  toggle = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" }
}

M.telescope = {
  -- find files
  findFiles = { "<cmd> Telescope find_files <CR>", "find files" },

  -- git log
  gitLog = { "<cmd> Telescope git_commits <CR>", "git commits" },

  -- git status
  gitStatus = { "<cmd> Telescope git_status <CR>", "git status" },
}

M.nvterm = {
  horizontalTerm = {
    function()
      require("nvterm.terminal").toggle "horizontal"
    end,
    "toggle horizontal term",
  },
}

M.gitsigns = {
  blame = { "<cmd> :Gitsigns toggle_current_line_blame <CR>", "toggle line blame" },
}

return M
