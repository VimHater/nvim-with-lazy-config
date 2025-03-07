return {
  { "nvim-treesitter/playground" },
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "vim",
        "yaml",
        "cpp",
      },
    },
    highlight = {
      enable = true,
      disable = function(_, buf)
        local max_filesize = 200000 * 1024 -- 200 MB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          vim.notify("Tree sitter disabled")
          return true
        end
      end,
    },
  },
}
