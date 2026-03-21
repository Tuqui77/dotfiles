-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")


vim.opt.switchbuf = ""
vim.opt.fixendofline = false
vim.opt.title = false

require("neotest").setup({
  adapters = {
    require("neotest-dotnet")
  }
})
