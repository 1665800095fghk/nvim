local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  {
    '2nthony/vitesse.nvim',
    dependencies = {
      'tjdevries/colorbuddy.nvim',
    },
  },
  'williamboman/mason.nvim',
  'williamboman/mason-lspconfig.nvim',
  'neovim/nvim-lspconfig',
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = {},
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
  },
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 100
    end,
    opts = {},
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' }, -- Required
    },
  },
  'xiyaowong/transparent.nvim',
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = 'nvim-tree/nvim-web-devicons',
  },
  'voldikss/vim-floaterm',
  {
    'ggandor/leap.nvim',
    dependencies = 'tpope/vim-repeat',
  },
  'terrortylor/nvim-comment',
})

vim.cmd('colorscheme vitesse')

require('base')
require('keymap')
require('plugin.mason')
require('plugin.lsp')
require('plugin.conform')
require('plugin.tree')
require('plugin.telescope')
require('plugin.lualine')
require('plugin.cmp')
require('plugin.transparent')
require('plugin.bufferline')
require('plugin.leap')
require('plugin.comment')

require('lsp.zero')
require('lsp.lua')
