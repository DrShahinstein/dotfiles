---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "doomchad",
  hl_add = {
    NvimTreeOpenedFolderName = {
      fg = "green",
      bold = true,
    }
  },
}

M.plugins = "custom.plugins"

return M
