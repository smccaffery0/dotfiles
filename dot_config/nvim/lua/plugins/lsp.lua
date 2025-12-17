return {
  -- NEW Neovim 0.11+ LSP API
    "neovim/nvim-lspconfig",
    config = function()
        local lsp = require("lspconfig")
        local configs = vim.lsp.config

        configs("rust_analyzer", {})
        configs("pyright", {})
        configs("ts_ls", {})
        configs("bashls", {})
        configs("lua_ls", {})
        configs("luau_lsp", {})
        configs("typos_lsp", {})
        configs("yamlls", {})
    end,
}
