return {
  {
    "navarasu/onedark.nvim",
    lazy = false, -- Load immediately
    priority = 1000, -- Ensure it loads before other plugins
    config = function()
      local onedark = require("onedark")
      onedark.setup({
        style = "deep", -- You can change this to 'dark', 'cool', 'deep', 'warm', etc.
      })
      onedark.load() -- This loads the theme properly
    end,
  },
}
