-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt

local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "rust-analyzer" },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "python", "c", "cpp", "zig", "rust",
        "make", "bash", "lua", "json", "vim",
        "html", "css", "javascript", "htmldjango",
      }
    },
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },
        },
      },

      view = {
        width = 25,
      },

      disable_netrw = false,
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.lspconfig"
    end,
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },
}

return plugins

