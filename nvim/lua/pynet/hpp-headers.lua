function HHeader()
  local path = vim.api.nvim_buf_get_name(0)
  local regex = "[^\\/]+"
  local name_and_extension = string.match(path:reverse(), regex):reverse()
  local name = name_and_extension
    :upper()
    :gsub("[^A-Z]", "_")
  --vim.cmd("0")
  vim.api.nvim_win_set_cursor(0,{1,0})
  --vim.api.nvim_set_current_line(name)
  local if_start = "#ifndef "..name
  local define = "#define "..name
  local empty_line = ""
  local if_end = "#endif"
  local header_text = {
    if_start,
    define,
    empty_line,
    empty_line,
    empty_line,
    if_end
  }
  vim.api.nvim_put(header_text, "l", false, true)
  vim.api.nvim_win_set_cursor(0,{4,0})
end

--vim.api.nvim_create_autocmd(
  --{ "BufNewFile" },
  --{ pattern = { ".h", ".hpp" }, callback = HHeader }
--)
