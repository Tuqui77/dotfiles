return {
  "L3MON4D3/LuaSnip",
  opts = function(_, opts)
    opts = opts or {}
    require("luasnip.loaders.from_vscode").lazy_load()
    require("luasnip.loaders.from_lua").lazy_load({
      paths = { vim.fn.stdpath("config") .. "/lua/snippets" },
    })
  end,
}
