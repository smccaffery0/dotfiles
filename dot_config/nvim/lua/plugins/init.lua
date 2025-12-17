return { 
  {
    'akinsho/bufferline.nvim', 
    version = "*", 
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },    
    
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup()
    end,
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter", -- Lazy-load on insert mode
    config = function()
        require("copilot").setup({
        suggestion = {
            enabled = false,
            auto_trigger = false,
            keymap = {
            accept = "<M-a>",        -- Accept suggestion
            next = "<M-]>",          -- Next suggestion
            prev = "<M-[>",          -- Previous suggestion
            dismiss = "<C-]>",       -- Dismiss suggestion
        },
      },
      panel = { enabled = false },
    })
  end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = { 
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- optional but recommended
        "MunifTanjim/nui.nvim",
    },    
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },

  {
    "Pocco81/true-zen.nvim",
    config = function()
      require("true-zen").setup()
    end,
  },

  { "sbdchd/neoformat" },

  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("dashboard").setup({})
    end,
  },

  {
    "numToStr/Comment.nvim",
    config = function()
      require("Comment").setup()
    end,
  },
    
  {
    "lervag/vimtex",
    ft = { "tex" },
    init = function()
        vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_compiler_method = 'latexmk'
    end,
  },
}


