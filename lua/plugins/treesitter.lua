return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup {
            ensure_installed = {
                "python",
                "rust",
                "lua",
                "latex",
                "vim"
            },
            highlight = {enable = true, },
        }
    end,
}
