return {
  {
    "navarasu/onedark.nvim",
    config = function()
      local onedark = require("onedark")
      onedark.setup({
        style = "deep", -- You can change this to 'dark', 'cool', 'deep', 'warm', etc.
      })
      onedark.load() -- This loads the theme properly
    end,
  },
}
