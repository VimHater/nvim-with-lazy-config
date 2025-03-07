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
  {
    "williamboman/mason-lspconfig.nvim",
    ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "neomake" },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--compile-commands-dir=build",
            "--query-driver=/usr/bin/clang++,/usr/bin/g++",
          },
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
        },
      },
    },
  },
}
