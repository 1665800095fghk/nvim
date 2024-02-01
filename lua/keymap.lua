vim.g.mapleader = ' '
local keymap = vim.keymap

keymap.set('n', 'J', ':m .+1<CR>==') -- move line up(n)
keymap.set('n', 'K', ':m .-2<CR>==') -- move line down(n)
keymap.set('v', 'J', ":m '>+1<CR>gv=gv") -- move line up(v)
keymap.set('v', 'K', ":m '<-2<CR>gv=gv") -- move line down(v)

keymap.set('n', '<c-a>', 'ggVG')

keymap.set({ 'n', 'x' }, '<leader>p', '"0p')

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>') -- save file
keymap.set('n', '<leader>x', '<cmd>bdelete<cr>')

keymap.set('n', 'j', [[v:count?'j':'gj']], {
  noremap = true,
  expr = true,
})
keymap.set('n', 'k', [[v:count?'k':'gk']], {
  noremap = true,
  expr = true,
})

-- 取消搜索
keymap.set('n', '<esc>', ':nohlsearch<CR>')

keymap.set('n', '<tab>', ':BufferLineCycleNext<CR>')
keymap.set('n', '<s-tab>', ':BufferLineCyclePrev<CR>')

keymap.set('n', '<a-i>', ':FloatermToggle<CR>')
keymap.set('t', '<a-i>', '<c-\\><c-n>:FloatermToggle<CR>')

-- comment
keymap.set('n', '<leader>/', ':CommentToggle<CR>')
keymap.set('v', '<leader>/', ':CommentToggle<CR>')
