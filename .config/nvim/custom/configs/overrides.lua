local M = {}

M.treesitter = {
  ensure_installed = {
    "python",
    "c",
    "cpp",
    "zig",
    "rust",
    "make",
    "bash",
    "lua",
    "json",
    "vim",
    "html",
    "css",
    "javascript",
    "htmldjango",
  },
}

M.mason = {
  ensure_installed = {
    -- language servers
    "rust-analyzer",
    "lua-language-server",
    "pyright",

    -- formatters
    "clang-format",
    "autopep8",
    "stylua",
    "prettier",
    "djlint",
    "shfmt",
  },
}

M.nvimtree = {
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
  disable_netrw = true,
}

M.nvterm = {
  terminals = {
    type_opts = {
      height = 0.28,
    },
  },
}

return M
