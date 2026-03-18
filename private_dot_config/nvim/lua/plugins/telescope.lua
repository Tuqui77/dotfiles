return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- optional but recommended
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-telescope/telescope-live-grep-args.nvim",
  },
  config = function()
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        mappings = {
          i = {
            ["<CR>"] = actions.select_default,
          },
          n = {
            ["<CR>"] = actions.select_default,
          },
        },
      },
    })

    -- cargá extensiones acá
    pcall(require("telescope").load_extension, "fzf")
    pcall(require("telescope").load_extension, "live_frep_args")

    vim.keymap.set("n", "<leader>fG", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", { desc = "Live Grep con Args" })
  end,
}
