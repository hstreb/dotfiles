return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  keys = {
    {
      '<leader>l',
      function()
        require('conform').format { async = true }
      end,
      mode = { 'n', 'v' },
      desc = 'Format file or range (in visual mode)',
    },
  },
  cmd = { 'ConformInfo' },
  opts = {
    formatters_by_ft = {
      bash = { 'beautysh' },
      html = { 'htmlbeautifier' },
      java = { 'uncrustify' },
      javascript = { { 'prettierd', 'prettier', stop_after_first = true } },
      javascriptreact = { { 'prettierd', 'prettier', stop_after_first = true } },
      json = { { 'prettierd', 'prettier', stop_after_first = true } },
      lua = { 'stylua' },
      markdown = { { 'prettierd', 'prettier', stop_after_first = true } },
      python = { 'isort', 'black' },
      sh = { 'shellcheck' },
      typescript = { { 'prettierd', 'prettier', stop_after_first = true } },
      yaml = { 'yamlfix' },
    },
    default_format_opts = {
      lsp_format = 'fallback',
    },
  },
}
