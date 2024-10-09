return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    config = function()
      vim.cmd.colorscheme("rose-pine")
    end
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 999,
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false
  },
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
  },
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup()
    end,
  },
  {
    "sho-87/kanagawa-paper.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {
    "ramojus/mellifluous.nvim",
    lazy = false,
    priority = 999,
  }
}
