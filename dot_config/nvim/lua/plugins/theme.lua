
return {
    { "EdenEast/nightfox.nvim" },

    { "nyoom-engineering/oxocarbon.nvim" },

    { "folke/tokyonight.nvim",           lazy = false,        opts = ... },

    { "rebelot/kanagawa.nvim" },

    { "ellisonleao/gruvbox.nvim",        priority = 1000,     config = true,   opts = ... },

    { "tiagovla/tokyodark.nvim" },

    { "datsfilipe/vesper.nvim" },

    { "sekke276/dark_flat.nvim" },

    { "tiesen243/vercel.nvim",           lazy = false,        priority = 1000, },

    { "DonJulve/NeoCyberVim" },

    { "nvim-tree/nvim-web-devicons" },

    { "catppuccin/nvim",                 name = "catppuccin", priority = 1000 },

    { "rose-pine/neovim",                name = "rose-pine",  priority = 1000 },

    { "shaunsingh/nord.nvim" },

    { "maxmx03/fluoromachine.nvim",      lazy = false,        priority = 1000 },

    { "shaunsingh/moonlight.nvim" },

    { "uloco/bluloco.nvim",              lazy = false,        priority = 1000 },

    { "AlexvZyl/nordic.nvim" },

    { "sainnhe/gruvbox-material" },

    ----------------------------------------------------------
    -- ACTIVE THEME BELOW
    ---------------------------------------------------------- 
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavor = "machiato",
                background = {
                    dark = "mocha",
                },
                transparent_background = false,
                float = {
                    transparent = false,
                    solid = false,
                },
            }) 
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}


