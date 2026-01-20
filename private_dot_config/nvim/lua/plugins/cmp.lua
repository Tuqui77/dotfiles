return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")

    -- 🔥 Prioridad de fuentes
    opts.sources = cmp.config.sources({
      { name = "luasnip", priority = 1000 },
      { name = "nvim_lsp", priority = 800 },
      { name = "buffer", priority = 500 },
    })

    -- (opcional) Mostrar la fuente en el menú
    opts.formatting = {
      format = function(entry, vim_item)
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          luasnip = "[SNIP]",
          buffer = "[BUF]",
        })[entry.source.name]
        return vim_item
      end,
    }
  end,
}
