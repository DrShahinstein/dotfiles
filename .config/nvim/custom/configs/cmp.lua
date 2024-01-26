-- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt

local default_options = require "plugins.configs.cmp"
local overriding_options = {
  completion = {
    keyword_length = 3,
  },
  performance = {
    max_view_entries = 7,
  },
  view = {
    docs = {
      auto_open = false,
    },
  },
}

local overall_options = vim.tbl_deep_extend("force", default_options, overriding_options)

return overall_options

