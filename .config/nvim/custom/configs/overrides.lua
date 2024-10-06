local M = {}

M.treesitter = {
  ensure_installed = {
    "python",
    "c",
    "cpp",
    "zig",
    "rust",
    "java",
    "haskell",
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
    "clangd",
    "lua-language-server",
    "java-language-server",
    "haskell-language-server",
    "pyright",

    -- formatters
    "clang-format",
    "autopep8",
    "stylua",
    "prettier",
    "djlint",
    "shfmt",
    "google-java-format",
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
