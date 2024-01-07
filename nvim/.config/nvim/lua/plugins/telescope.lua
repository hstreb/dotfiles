local config = function()
  local telescope = require("telescope")
  telescope.setup({
    defaults = {
      file_ignore_patterns = { ".git/" },
      mappings = {
        i = {
          ["<C-j>"] = "move_selection_next",
          ["<C-k>"] = "move_selection_previous",
        },
      },
    },
    pickers = {
      find_files = {
        hidden = true,
      },
    },
  })
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Find Files' })
  vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
  vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
  vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find help tags' })
  vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find keymaps' })
  vim.keymap.set('n', '<leader>fo', builtin.oldfiles, { desc = 'Find oldfiles' })
end

return {
  'nvim-telescope/telescope.nvim',
  event = 'VeryLazy',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- NOTE: If you are having trouble with this installation,
      --       refer to the README for telescope-fzf-native for more instructions.
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = config,
  keys = {},
}
