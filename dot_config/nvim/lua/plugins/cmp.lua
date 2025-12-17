return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp-signature-help",

        -- REQUIRED FOR SNIPPETS
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
    },



    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- Load VSCode-style snippets
        require("luasnip.loaders.from_vscode").lazy_load()

        cmp.setup({
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            completion = {
                autocomplete =
                { require("cmp.types").cmp.TriggerEvent.TextChanged },
            },
            window = {
                completion = cmp.config.window.bordered({
                    border = 'rounded',
                    winhightlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:PmenuSel,Search:none",
                }),
                documentation = cmp.config.window.bordered({
                    border = "rounded",
                }),
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),

                -- SNIPPET JUMPING
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.expand_or_jumpable() then
                        luasnip.expand_or_jump()
                    else
                        fallback()
                    end
                end, { "i", "s" }),

                ["<S-Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_prev_item()
                    elseif luasnip.jumpable(-1) then
                        luasnip.jump(-1)
                    else
                        fallback()
                    end
                end, { "i", "s" }),
            }),

            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }, -- REQUIRED
                { name = "buffer" },
                { name = "path" },
            }),
        })
    end,
}
