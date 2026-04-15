-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Keymaps del LSP
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>rd", vim.lsp.buf.definition, { desc = "Definición" })
vim.keymap.set("n", "<leader>rr", require('telescope.builtin').lsp_references, { desc = "Referencias" })
vim.keymap.set("n", "<leader>ri", require('telescope.builtin').lsp_implementations, { desc = "Implementación" })
vim.keymap.set("n", "<leader>rh", vim.lsp.buf.hover, { desc = "Menú contextual" })
vim.keymap.set("n", "<leader>rs", vim.lsp.buf.signature_help, { desc = "Signature" })
vim.keymap.set("n", "<leader>ra", vim.lsp.buf.code_action, { desc = "Code Actions" })

-- Comandos para Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", function()
  builtin.find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Telescope find files" })

vim.keymap.set("n", "<leader>fF", function()
  builtin.find_files({
    hidden = true,
    no_ignore = true,
    find_command = {
      "fd",
      "--type",
      "f",
      "--hidden",
      "--no-ignore",
    },
  })
end, { desc = "Find files including .git" })

vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set('n', "<leader>ft", function()
    require('telescope.builtin').grep_string({ search = "TODO|FIXME|HACK", use_regex = true })
end, { desc = "Search TODOs" })

-- Comandos para centrar la vista al desplazar
vim.keymap.set("i", "<C-u>", "<C-u>zz")
vim.keymap.set("i", "<C-d>", "<C-d>zz")

--Comandos para redimensionar las vistas
vim.keymap.set('n', '<A-Up>', ':resize -2<CR>', { silent = true })
vim.keymap.set('n', '<A-Down>', ':resize +2<CR>', { silent = true })
vim.keymap.set('n', '<A-Left>', ':vertical resize -2<CR>', { silent = true })
vim.keymap.set('n', '<A-Right>', ':vertical resize +2<CR>', { silent = true })
