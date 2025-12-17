return {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        local servers = {
            "rust_analyzer",
            "pyright",
            "ts_ls",
            "bashls",
            "lua_ls",
            "yamlls",
        }

        for _, s in ipairs(servers) do
            vim.lsp.config(s, { capabilities = capabilities })
            vim.lsp.enable(s)
        end
    end,
}
