return {
  "saghen/blink.cmp",
  opts = {
    snippets = {
      preset = "luasnip",
    },

    sources = {
      default = {
        "snippets",
        "lsp",
        "buffer",
        "path",
      },
    },

    completion = {
      list = {
        selection = {
          preselect = true,
          auto_insert = false,
        },
      },
    },
  },
}
