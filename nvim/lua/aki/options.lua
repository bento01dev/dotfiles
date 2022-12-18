vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.completeopt = { "menuone", "noselect" } 
vim.opt.conceallevel = 0                        

vim.opt.errorbells = false

vim.opt.fileencoding = "utf-8"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.smartcase = true

vim.opt.wrap = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true

vim.opt.pumheight = 10

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.cmdheight = 1
vim.opt.numberwidth = 2

vim.opt.updatetime = 300

vim.opt.cmdheight = 2

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.colorcolumn = "80"
