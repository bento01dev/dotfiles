local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
vim.keymap.set("n", "<leader>e", require("oil").open, { desc = "Open parent directory" })

-- Navigate buffers
keymap("n", "<leader>j", ":bnext<CR>", opts)
keymap("n", "<leader>k", ":bprevious<CR>", opts)

-- Use <Tab> to cycle through buffers in tab
keymap("n", "<leader><Tab>", "<C-W>w", opts);
keymap("n", "<leader>o", "<C-W>o", opts);
keymap("n", "<leader>|", "<C-W>|", opts);
keymap("n", "<leader>_", "<C-W>_", opts);
keymap("n", "<leader>=", "<C-W>=", opts);

-- Flip between horizontal and vertical split
keymap("n", "<leader>h", "<C-W>K", opts);
keymap("n", "<leader>v", "<C-W>H", opts);


-- Pg Up/Down
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Copy to clipboard
keymap("n", "<leader>y", "\"+y", opts)
keymap("n", "<leader>yy", "\"+Y", opts)

-- Visual --
-- indentation
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Copy to clipboard
keymap("v", "<leader>y", "\"+y", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Copy to clipboard
keymap("x", "<leader>y", "\"+y", opts)

-- Telescope --
-- keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)
-- keymap("n", "<leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", opts)
-- keymap("n", "<c-t>", "<cmd>Telescope live_grep<cr>", opts)

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
    -- You can pass additional configuration to telescope to change theme, layout, etc.
    require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
    })
end, { desc = '[/] Fuzzily search in current buffer]' })

vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })

vim.cmd [[
   augroup highlight_yank
       autocmd!
       au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=100})
   augroup END
]]

vim.keymap.set("n", "<leader>c", function()
    require("treesitter-context").go_to_context()
end, { silent = true })
