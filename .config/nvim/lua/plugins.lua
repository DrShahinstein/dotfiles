local lazy_plugin = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazy_plugin) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazy_plugin,
  })
end

vim.opt.rtp:prepend(lazy_plugin)

require("lazy").setup({
  -- vim_easy_align --
  {
    "junegunn/vim-easy-align",
    keys = {
      { "ga", "<Plug>(EasyAlign)", mode = { "n", "x" } },
    },
  },

  -- gitsigns --
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()
    end,
  },

  -- nvim_tree --
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("nvim-tree").setup({
        view = {
          width = "100%",
        },
        actions = {
          open_file = {
            quit_on_open = true,
          },
        },
        git = {
          enable = true,
        },
        hijack_cursor = true,
        update_focused_file = {
          enable = true,
        },
      })
    end,
  }
})
