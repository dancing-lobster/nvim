return {

    -- LSP --------------------------------------------------------------------
    {
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
    },
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "VonHeikemen/lsp-zero.nvim",

    -- Autocomplete -----------------------------------------------------------
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    -- Lualine ----------------------------------------------------------------
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons'}
    },

    -- Telescope --------------------------------------------------------------
    { 
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep', 'sharkdp/fd' }

    },
    -- Neo-Tree ---------------------------------------------------------------
    { 
    "nvim-neo-tree/neo-tree.nvim", branch = "v2.x", dependencies = { 
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    }
},
    -- Treesitter -------------------------------------------------------------
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "python", "rust", "lua"
            },
            highlight = {enable = true, },
        }
    end,
},
    -- WhichKey ---------------------------------------------------------------
{ 
    "folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup({
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        })
    end,
},
    -- Colors -----------------------------------------------------------------
{
    -- the colorscheme should be available when starting Neovim
    -- make sure we load this during startup if it is your main colorscheme
    "folke/tokyonight.nvim",
    lazy = false, 
    -- make sure to load this before all the other start plugins
    priority = 1000,     
    config = function()
        -- load the colorscheme here
        vim.cmd([[colorscheme tokyonight]])
    end,
},
    "joshdick/onedark.vim",
}
