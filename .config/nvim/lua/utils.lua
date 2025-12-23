local M = {}

function M.clang_format()
  local buf   = 0
  local p1    = vim.fn.getpos("v")[2]
  local p2    = vim.fn.getpos(".")[2]
  local start = math.min(p1, p2)
  local end_  = math.max(p1, p2)
  local file  = vim.fn.expand("%:p")
  local view  = vim.fn.winsaveview()

  local buf_lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
  local input = table.concat(buf_lines, "\n")
  if input:sub(-1) ~= "\n" then
    input = input .. "\n"
  end

  local cmd = { "clang-format", string.format("--lines=%d:%d", start, end_) }
  if file ~= "" then
    table.insert(cmd, "--assume-filename")
    table.insert(cmd, file)
  end

  local output = vim.fn.system(cmd, input)
  if vim.v.shell_error ~= 0 then
    vim.notify(output, vim.log.levels.ERROR)
    return
  end

  local out_lines = vim.split(output, "\n", { plain = true })
  if out_lines[#out_lines] == "" then
    table.remove(out_lines, #out_lines)
  end

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, out_lines)
  vim.fn.winrestview(view)
end

return M
