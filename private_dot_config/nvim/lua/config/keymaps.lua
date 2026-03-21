-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here


-- Keymaps del LSP
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
vim.keymap.set("n", "<leader>rd", vim.lsp.buf.definition, { desc = "Definición"})
vim.keymap.set("n", "<leader>rr", vim.lsp.buf.references, { desc = "Referencias"})
vim.keymap.set("n", "<leader>ri", vim.lsp.buf.implementation, { desc = "Implementación"})
vim.keymap.set("n", "<leader>rh", vim.lsp.buf.hover, { desc = "Menú contextual"})
vim.keymap.set("n", "<leader>rs", vim.lsp.buf.signature_help, { desc = "Signature"})

-- Comandos para Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
