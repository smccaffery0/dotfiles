return {
  -- Mason installer
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  -- Mason <-> LSP bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "rust_analyzer",
          "pyright",
          "ts_ls",
          "lua_ls",
          "bashls",
          "luau_lsp",
          "typos_lsp",
          "yamlls",
        },
        automatic_installation = true,
      })
    end,
  },
}
