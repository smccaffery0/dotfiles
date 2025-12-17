return {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = {
        "saadparwaiz1/cmp_luasnip",
    },
    config = function()
        local ls = require("luasnip")

        ls.config.set_config({
            history = true,
            updateevents = "TextChanged,TextChangedI",
            enable_autosnippets = true,
        })

        -- Load VSCode-style snippets (optional but recommended)
        require("luasnip.loaders.from_vscode").lazy_load()
    end,
}
