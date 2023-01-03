require('ayu').setup({
  mirage = true,
  overrides = {
    Cursor = { fg = "#000000", bg = "#FFFFFF" },
    CursorLineConceal = { fg = "none", bg = "none" }
    --CursorColumn = {
      --guibg = "#FFFFFF",
      --guifg = "#000000",
      --ctermbg = "#FFFFFF",
      --ctermfg = "#000000",
    --}
  }
})

function ResetBackground(color)
  color = color or "ayu-mirage"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ResetBackground()
