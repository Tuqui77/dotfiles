return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.yamlls.setup({
        settings = {
          yaml = {
            schemaStore = {
              enable = false,
              url = "",
            },
            schemas = {
              ["https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.0/all.json"] = {
                "*.yaml",
                "*.yml",
              },
            },
            validate = true,
            completion = true,
            hover = true,
          },
        },
      })
    end,
  },
}
