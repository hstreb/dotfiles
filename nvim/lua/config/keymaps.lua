local keymap = vim.api.nvim_set_keymap

local opts = function(desc)
  return { noremap = true, silent = true, desc = desc }
end

keymap("", "<Space>", "<Nop>", opts('Leader key'))

-- Scroll page
keymap("n", "<C-d>", "<C-d>zz", opts())
keymap("n", "<C-u>", "<C-u>zz", opts())

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts())
keymap("n", "<S-h>", ":bprevious<CR>", opts())
keymap("n", "<leader>bn", ":bnext<CR>", opts())
keymap("n", "<leader>bp", ":bprevious<CR>", opts())

-- Directory navigation
keymap("n", "<leader>m", ":NvimTreeFocus<CR>", opts())
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts())

-- Close buffers
keymap("n", "<S-q>", "<cmd>bdelete<CR>", opts())
keymap("n", "<leader>q", ":q<CR>", opts('Quit'))

-- Move text up and down
keymap("x", "<A-j>", ":move '>+1<cr>gv-gv", opts())
keymap("x", "<A-k>", ":move '<-2<cr>gv-gv", opts())

-- Window Management
keymap("n", "<leader>sv", ":vsplit<CR>", opts())
keymap("n", "<leader>sh", ":split<CR>", opts())

-- Increment/Decrement
keymap("n", "+", "<C-a>", opts())
keymap("n", "-", "<C-x>", opts())

-- Select All
keymap("n", "<C-a>", "gg<S-v>G", opts())

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false })
vim.api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false })
