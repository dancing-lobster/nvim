return {
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
