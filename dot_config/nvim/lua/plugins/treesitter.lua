return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            local ok, configs = pcall(require, "nvim-treesitter/nvim-treesitter.configs")
            if not ok then
                return
            end

            configs.setup({
                ensure_installed = {
                    "lua",
                    "python",
                    "javascript",
                    "html",
                    "css",
                    "c",
                    "rust",
                    "latex",
                    "toml"
                },
                highlight = { enable = true },
                indent = { enable = true },
                extended_mode = { enable = true },
            })
        end,
    },
}
