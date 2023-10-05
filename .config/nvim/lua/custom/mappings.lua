-- n, v, i, t = mode names

local M = {}

-- M.general = {
--   i = {
--     -- go to  beginning and end
--     ["<A-e>"] = { "<End>", "End of line" }
--   }
-- }

M.tabufline = {
  n = {
    -- cycle through buffers
    ["L"] = {
      function()
        require("nvchad.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["H"] = {
      function()
        require("nvchad.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },
  },
}

M.auto_session = {
  n = {
    -- save and restore sessions
    ["<leader>ww"] = { "<cmd>SessionRestore<CR>", "Restore session for cwd" },
    ["<leader>ws"] = { "<cmd>SessionSave<CR>", "Save session for cwd" },
  }
}

return M
