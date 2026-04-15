-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("config.autocmds")

vim.opt.switchbuf = ""
vim.opt.fixendofline = false
vim.opt.title = false

-- Opciones para limitar las indent guides
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

require("neotest").setup({
  adapters = {
    require("neotest-dotnet")
  }
})
