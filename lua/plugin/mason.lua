local lsp_zero = require('lsp-zero')
require('mason').setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})

require('mason-lspconfig').setup({
  ensure_installed = {},
  handlers = {
    lsp_zero.default_setup,
  },
})

require('mason-tool-installer').setup({
  ensure_installed = {
    'lua-language-server',
    'stylua',
    'prettier',
    'eslint-lsp',
    'clangd',
    'rust-analyzer',
    'typescript-language-server',
    'cmake-language-server',
    'intelephense',
    'pyright',
  },
})
