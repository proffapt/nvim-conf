-------------------
-- NeoVim Config --
-------------------

-- Order of declaration matters!
require('plugins')
-- Best to declare plugins first as,
-- other things might be dependent on plugins.
-- Like: keymaps using floatterm, colorscheme etc.

require('colorscheme')
require('options')
require('keymaps')
require('lsp')

