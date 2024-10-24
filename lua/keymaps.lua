-- Set space as the leader key
vim.g.mapleader = " "

-- define common options
Opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- NORMAL MODE --
-----------------

-- CONFIGURATION RELATED --
vim.keymap.set('n', '<leader>cr', ':w<CR> :luafile %:p<CR>', Opts)

-- WINDOW MANAGEMENT --
-- Save, Close, Save and Close
vim.keymap.set('n', '<leader>w', ':w<CR>', Opts)
vim.keymap.set('n', '<leader>x', ':q<CR>', Opts)
vim.keymap.set('n', '<leader>s', ':wq<CR>', Opts)

-- MULTIPLE WINDOW MANAGEMENT --
-- Splitting & Tabedit
vim.keymap.set('n', '<leader>hs', ':split<CR>', Opts)
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', Opts)
vim.keymap.set('n', '<leader>t', ':tabedit<CR>', Opts)
-- Terminal Windows: Splitting & Tabedit
vim.keymap.set('n', '<leader>ht', ':split | terminal<CR> i', Opts)
vim.keymap.set('n', '<leader>vt', ':vsplit | terminal<CR> i', Opts)
vim.keymap.set('n', '<leader>tt', ':tabedit | terminal<CR> i', Opts)
-- Navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', Opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', Opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', Opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', Opts)
vim.keymap.set('n', '<Tab>', ':tabnext<CR>', Opts)
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>', Opts)
-- Resize with arrows (delta: 1 lines)
vim.keymap.set('n', '<C-S-Up>', ':resize +1<CR>', Opts)
vim.keymap.set('n', '<C-S-Down>', ':resize -1<CR>', Opts)
vim.keymap.set('n', '<C-S-Left>', ':vertical resize +1<CR>', Opts)
vim.keymap.set('n', '<C-S-Right>', ':vertical resize -1<CR>', Opts)

-----------------
-- VISUAL MODE --
-----------------

-- Start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', Opts)
vim.keymap.set('v', '>', '>gv', Opts)

-------------------
-- TERMINAL MODE --
-------------------

-- MULTIPLE WINDOW MANAGEMENT --
-- Navigation in terminal mode
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', Opts)
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', Opts)
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', Opts)
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', Opts)
-- Resize with arrows (delta: 1 line) in terminal mode
vim.keymap.set('t', '<C-S-Up>', '<C-\\><C-n>:resize +1<CR>', Opts)
vim.keymap.set('t', '<C-S-Down>', '<C-\\><C-n>:resize -1<CR>', Opts)
vim.keymap.set('t', '<C-S-Left>', '<C-\\><C-n>:vertical resize +1<CR>', Opts)
vim.keymap.set('t', '<C-S-Right>', '<C-\\><C-n>:vertical resize -1<CR>', Opts)

--------------------
-- MODE SWITCHING --
--------------------

-- jk: Visual/Insert -> Normal
vim.keymap.set('t', 'jk', '<Esc>', Opts)
-- Esc: Terminal -> Normal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', Opts)

---------------------------------
-- IMPORT KEYMAPS FROM PLUGINS --
---------------------------------
require('config.telescope')
require('config.nvimtree')

