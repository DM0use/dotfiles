local plugins = {
 {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "svelte",

       -- low level
        "c",
        "zig",

       -- other
        "dockerfile",
        "python",
        "sql",
        "yaml"
      },
    },
  },

    -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
        require "custom.configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
      require "custom.configs.mason"
    end,
  },

  {
    "nvimtools/none-ls.nvim", -- configure formatters & linters
    lazy = true,
    event = { "BufReadPre", "BufNewFile" }, -- to enable uncomment this
    dependencies = {
      "jay-babu/mason-null-ls.nvim",
    },
    config = function()
      require "custom.configs.none-ls"
    end,
  },

  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require "custom.configs.auto-session"
    end,
  },

}




return plugins
