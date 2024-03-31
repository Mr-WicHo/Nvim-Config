local config = function()
  local theme = require('lualine.themes.onedark')
  -- theme.normal.c.bg = nil
  
  require("lualine").setup{
    options = {
      theme = theme,
      globalstatus = true,
    },

    sections = {
      lualine_a = { 
        {
          "buffers",
          use_mode_colors = true,
        }, 
      },

      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      
      lualine_y = {
        {"filesize",},
        {
          "filetype",
          icon_only = false,
        }, 
        {"location",},
      },

      lualine_z = { {"mode",},},

    },

    --[[ inactive_sections = {
      lualine_a = {},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },]]

  }
end

return{
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
