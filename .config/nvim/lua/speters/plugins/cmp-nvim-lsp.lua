return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',   -- Connects cmp to LSP
    'hrsh7th/cmp-buffer',     -- Autocomplete words in buffer
    'hrsh7th/cmp-path',       -- Autocomplete file paths
    'hrsh7th/cmp-cmdline',    -- Autocomplete Vim command line
    'hrsh7th/cmp-vsnip',      -- Snippet support
    'hrsh7th/vim-vsnip'       -- Snippet engine
  },
  config = function()
    local cmp = require'cmp'

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)  -- Enable snippet expansion
        end,
      },
      mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Accept selection with Enter
        ['<Tab>'] = cmp.mapping.select_next_item(),  -- Navigate down
        ['<S-Tab>'] = cmp.mapping.select_prev_item(),  -- Navigate up
      },
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },  -- Use LSP as a source
        { name = 'buffer' },    -- Include words from buffer
      })
    })

    -- Connect cmp to Pyright
    require('lspconfig').pyright.setup{
      capabilities = require('cmp_nvim_lsp').default_capabilities()
    }
  end
}

