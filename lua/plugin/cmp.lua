local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select_opts = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  },
  mapping = {
    ['<tab>'] = cmp_action.tab_complete(),
    ['<s-tab>'] = cmp_action.select_prev_or_fallback(),
    ['<a-k>'] = cmp.mapping.select_prev_item(cmp_select_opts),
    ['<a-j>'] = cmp.mapping.select_next_item(cmp_select_opts),
    ['<CR>'] = cmp.mapping.confirm({ select = false }),
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
})
