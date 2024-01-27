local conform = require "conform"

local options = {
	lsp_fallback = true,
	formatters_by_ft = {
    c = { "clangd-format" },
    cpp = { "clangd-format" },
    python = { "autopep8" },
		sh = { "shfmt" },
		html = { "djlint" },
  	css = { "prettier" },
	  javascript = { "prettier" },
	  lua = { "stylua" },
    json = { "prettier" },
	},
}

vim.keymap.set({ 'n' }, "<leader>F", function ()
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 200,
  })
end, { desc = "Format file" })

conform.setup(options)

