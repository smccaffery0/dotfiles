return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            formatter_by_ft = {
                rust = { "rustfmt" }
            },
            -- Auto format on save
            format_on_save = {
                lsp_fallback = true,
                timeout = 3000,
            },
        })
    end
}


