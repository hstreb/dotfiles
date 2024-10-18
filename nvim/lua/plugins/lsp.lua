return {
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      { 'L3MON4D3/LuaSnip' },
      { 'saadparwaiz1/cmp_luasnip' },
      {
        'rafamadriz/friendly-snippets',
        config = function()
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
      },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}

      local kind_icons = {
        Text = '󰉿',
        Method = 'm',
        Function = '󰊕',
        Constructor = '',
        Field = '',
        Variable = '󰆧',
        Class = '󰌗',
        Interface = '',
        Module = '',
        Property = '',
        Unit = '',
        Value = '󰎠',
        Enum = '',
        Keyword = '󰌋',
        Snippet = '',
        Color = '󰏘',
        File = '󰈙',
        Reference = '',
        Folder = '󰉋',
        EnumMember = '',
        Constant = '󰇽',
        Struct = '',
        Event = '',
        Operator = '󰆕',
        TypeParameter = '󰊄',
      }

      cmp.setup {
        sources = {
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'buffer' },
          { name = 'path' },
        },
        mapping = cmp.mapping.preset.insert {
          ['<C-j>'] = cmp.mapping.select_next_item(),
          -- ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<C-k>'] = cmp.mapping.select_prev_item(),
          -- ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-u>'] = cmp.mapping.scroll_docs(-4),
          ['<C-d>'] = cmp.mapping.scroll_docs(4),
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_locally_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { 'i', 's' }),
          ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.locally_jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { 'i', 's' }),
        },
        snippet = {
          expand = function(args)
            vim.snippet.expand(args.body)
          end,
        },
        formatting = {
          fields = { 'kind', 'abbr', 'menu' },
          format = function(entry, vim_item)
            vim_item.kind = string.format('%s', kind_icons[vim_item.kind])
            vim_item.menu = ({
              nvim_lsp = '[LSP]',
              luasnip = '[Snippet]',
              buffer = '[Buffer]',
              path = '[Path]',
            })[entry.source.name]
            return vim_item
          end,
        },
      }
      -- Setup up vim-dadbod
      cmp.setup.filetype({ 'sql' }, {
        sources = {
          { name = 'vim-dadbod-completion' },
          { name = 'buffer' },
        },
      })
    end,
  },

  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = { 'LspInfo', 'LspInstall', 'LspStart' },
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'williamboman/mason.nvim', config = true },
      { 'williamboman/mason-lspconfig.nvim' },
      { 'WhoIsSethDaniel/mason-tool-installer.nvim' },
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end
          map('K', vim.lsp.buf.hover, 'Hover')
          map('gd', vim.lsp.buf.definition, '[G]o [D]efinition')
          map('gD', vim.lsp.buf.declaration, '[G]o [D]eclaration')
          map('gi', vim.lsp.buf.implementation, '[G]o [I]mplementation')
          map('go', vim.lsp.buf.type_definition, '[G]o Type Definition')
          map('gr', vim.lsp.buf.references, '[G]o [R]eference')
          map('gs', vim.lsp.buf.signature_help, '[G]o [S]ignature Help')
          map('<F2>', vim.lsp.buf.rename, 'Rename')
          map('<F4>', vim.lsp.buf.code_action, 'Code Action')
          map('<C-h>', vim.lsp.buf.signature_help, 'LSP Signature Help', 'i')
        end,
      })

      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      local servers = {
        bashls = {},
        dockerls = {},
        gradle_ls = {},
        groovyls = {},
        jdtls = {},
        jsonls = {},
        kotlin_language_server = {},
        lemminx = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              diagnostics = {
                globals = { 'vim' },
              },
            },
          },
        },
        marksman = {},
        pyright = {},
        yamlls = {},
      }

      require('mason').setup()

      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
