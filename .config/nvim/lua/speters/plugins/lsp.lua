return {
  -- LSP Config
  {
    'neovim/nvim-lspconfig',
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      'williamboman/mason.nvim', -- Optional: LSP Installer
      'williamboman/mason-lspconfig.nvim', -- Bridge for Mason and LSP
    },
    config = function()
require("lspconfig").pyright.setup({
  settings = {
    python = {
      pythonPath = vim.fn.exepath("python"),  -- Ensures LSP uses the selected venv
    },
  },
})

    end,
  },
}

