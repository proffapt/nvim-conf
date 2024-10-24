-- Set space as the leader key
vim.g.mapleader = " "

-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Configuration Related --
vim.keymap.set('n', '<leader>cr', ':w<CR> :luafile %:p<CR>', opts)

-- WINDOW MANAGEMENT --
-- Save, Close, Save and Close
vim.keymap.set('n', '<leader>w', ':w<CR>', opts)
vim.keymap.set('n', '<leader>x', ':q<CR>', opts)
vim.keymap.set('n', '<leader>s', ':wq<CR>', opts)

-- MULTIPLE WINDOW MANAGEMENT --
-- Splitting & Tabedit
vim.keymap.set('n', '<leader>hs', ':split<CR>', opts)
vim.keymap.set('n', '<leader>vs', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>t', ':tabedit<CR>', opts)
-- Terminal Windows: Splitting & Tabedit
vim.keymap.set('n', '<leader>ht', ':split | terminal<CR> i', opts)
vim.keymap.set('n', '<leader>vt', ':vsplit | terminal<CR> i', opts)
vim.keymap.set('n', '<leader>tt', ':tabedit | terminal<CR> i', opts)
-- Navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)
vim.keymap.set('n', '<Tab>', ':tabnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':tabprevious<CR>', opts)
-- Resize with arrows (delta: 1 lines)
vim.keymap.set('n', '<C-S-Up>', ':resize +1<CR>', opts)
vim.keymap.set('n', '<C-S-Down>', ':resize -1<CR>', opts)
vim.keymap.set('n', '<C-S-Left>', ':vertical resize +1<CR>', opts)
vim.keymap.set('n', '<C-S-Right>', ':vertical resize -1<CR>', opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-------------------
-- Terminal mode --
-------------------

-- MULTIPLE WINDOW MANAGEMENT --
-- Navigation in terminal mode
vim.keymap.set('t', '<C-h>', '<C-\\><C-n><C-w>h', opts)
vim.keymap.set('t', '<C-j>', '<C-\\><C-n><C-w>j', opts)
vim.keymap.set('t', '<C-k>', '<C-\\><C-n><C-w>k', opts)
vim.keymap.set('t', '<C-l>', '<C-\\><C-n><C-w>l', opts)
-- Resize with arrows (delta: 1 line) in terminal mode
vim.keymap.set('t', '<C-S-Up>', '<C-\\><C-n>:resize +1<CR>', opts)
vim.keymap.set('t', '<C-S-Down>', '<C-\\><C-n>:resize -1<CR>', opts)
vim.keymap.set('t', '<C-S-Left>', '<C-\\><C-n>:vertical resize +1<CR>', opts)
vim.keymap.set('t', '<C-S-Right>', '<C-\\><C-n>:vertical resize -1<CR>', opts)

--------------------
-- MODE SWITCHING --
--------------------

-- jk: Visual/Insert -> Normal
vim.keymap.set('t', 'jk', '<Esc>', opts)
-- Esc: Terminal -> Normal
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', opts)

---------------------------------
-- Import Keymaps From Plugins --
---------------------------------
require('config.telescope')

