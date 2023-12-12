local config = function()
  local theme = require("lualine.themes.base16")

  require("lualine").setup({
    options = {
      theme = theme,
      globalstatus = true,
      section_separators = "",
      component_separators = "",
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { 'branch', 'diff', 'diagnostics' },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { "encoding", "fileformat", "filetype" },
      lualine_y = { "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {
      lualine_a = { 'buffers' }
    },
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  })
end

return {
  "nvim-lualine/lualine.nvim",
  lazy = false,
  config = config,
}
