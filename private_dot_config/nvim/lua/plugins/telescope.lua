return {
  "nvim-telescope/telescope.nvim",
  tag = "v0.2.1",
  dependencies = {
    "nvim-lua/plenary.nvim",
    -- optional but recommended
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
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
  end,
}
