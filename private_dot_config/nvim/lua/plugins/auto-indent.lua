return {
  "VidocqH/auto-indent.nvim",
  config = function()
    require("auto-indent").setup({
      lightmode = true, -- asume indent estable
      indentexpr = nil, -- usa vim.bo.indentexpr
      ignore_filetype = {}, -- ej: { "javascript" }
    })
  end,
}
