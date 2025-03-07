return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = {
        theme = "onedark",
        icons_enabled = true,
        component_separators = "",
        section_separators = { left = "", right = "" },
      }

      -- Customizing Mode Indicator
      opts.sections.lualine_a = {
        { "mode", separator = { left = "", right = "" }, right_padding = 2 },
      }

      opts.sections.lualine_b = {
        { "branch", separator = { left = "", right = "" } },
      }
      opts.sections.lualine_c = {
        {
          function()
            return vim.fn.fnamemodify(vim.fn.expand("%:p:h"), ":~") -- Shows the directory
          end,
          icon = "", -- Adds a folder icon
        },
        "filename",
      }
      opts.sections.lualine_x = {
        { "filetype", separator = { left = "", right = "" } },
      }
      opts.sections.lualine_y = {
        { "progress", separator = { left = "", right = "" }, padding = { left = 1, right = 0 } },
        { "location", separator = { left = "", right = "" }, padding = { left = 0, right = 1 } },
      }
      opts.sections.lualine_z = {
        {
          function()
            return " " .. os.date("%R")
          end,
          separator = { left = "", right = "" }, -- Rounded clock separator
        },
      }
    end,
  },
}
