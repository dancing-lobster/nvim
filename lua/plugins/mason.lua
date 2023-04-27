return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "black",
      "pyright",
      "prettier",
      "shellcheck",
      "shfmt",
      "flake8",
      "rustfmt",
      "rust-analyzer",
    },
  },
}
