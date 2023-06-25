-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- require "aki.nvimtree"
require "aki.options"
require "aki.keymaps"
require "aki.plugins"
require "aki.colorscheme"
require "aki.oil"
require "aki.cmp"
require "aki.lsp"
require "aki.telescope"
require "aki.treesitter"
require "aki.lualine"
require "aki.trouble"
require "aki.blankline"
