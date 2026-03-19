return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "lua-language-server",
        "xmlformatter",
        "csharpier",
        "prettier",
        "bicep-lsp",
        "html-lsp",
        "css-lsp",
        "eslint-lsp",
        "json-lsp",
        "roslyn",
      },
    },
  },
}
