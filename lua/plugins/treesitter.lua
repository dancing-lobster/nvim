return {
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
}
