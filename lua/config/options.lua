-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- In your init.lua or a separate file for clipboard settings
vim.g.clipboard = {
  name = "wl-clipboard",
  copy = {
    ["+"] = "wl-copy",
    ["*"] = "wl-copy",
  },
  paste = {
    ["+"] = "wl-paste",
    ["*"] = "wl-paste",
  },
  cache_enabled = true,
}

-- Set clipboard option
vim.opt.clipboard = ""

-- Simple clipboard keymaps
vim.keymap.set(
  { "n", "v", "i", "c" },
  "<C-S-c>",
  '"+y',
  { noremap = true, silent = true, desc = "Copy to system clipboard" }
)
vim.keymap.set({ "n", "v" }, "<C-S-v>", '"+p', { noremap = true, silent = true, desc = "Paste from system clipboard" })
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.g.snacks_animate = false
vim.g.autoformat = false
