vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
})

vim.wo.relativenumber = true

vim.keymap.set("v", "<Leader>f", vim.lsp.buf.format, {})
