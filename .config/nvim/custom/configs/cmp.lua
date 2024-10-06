-- https://github.com/hrsh7th/nvim-cmp/blob/main/doc/cmp.txt

local lspkind = require "lspkind"
local default_options = require "plugins.configs.cmp"

local overriding_options = {
  completion = {
    keyword_length = 0,
  },
  performance = {
    max_view_entries = 10,
  },
  view = {
    docs = {
      auto_open = false,
    },
  },
  formatting = {
    format = lspkind.cmp_format {
      before = function(_entry, vim_item)
        if vim_item.menu ~= nil and string.len(vim_item.menu) > 0 then
          vim_item.menu = string.sub(vim_item.menu, 1, 0) .. ""
        end
        return vim_item
      end,
    },
  },
}

local overall_options = vim.tbl_deep_extend("force", default_options, overriding_options)

return overall_options
