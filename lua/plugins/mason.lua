return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "bash-language-server",
        "clangd",
        "clang-format",
        "codelldb",
      },
    },
  },
}
