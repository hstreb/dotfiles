return {
  -- Highlight, edit, and navigate code
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
  lazy = false,
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autoinstall = true,
      autotag = { true },
      ensure_installed = { 'c', 'cpp', 'go', 'lua', 'java', 'scala', 'yaml', 'json', 'markdown', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash' },
    })
  end
}
