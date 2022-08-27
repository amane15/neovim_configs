local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as a leader key
-- TODO change leader key to control
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", "_dP", opts)

-- Telescope keymaps
keymap("", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
keymap("", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
keymap("", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)
keymap("", "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", opts)
keymap("", "<leader>gr", "<cmd>Telescope lsp_references<cr>", opts)

-- Nvim Tree
keymap("", "<leader>e", ":NvimTreeToggle<CR>", opts)

keymap("", "<leader>p", ":lua print(vim.inspect(vim.lsp.buf_get_clients()[1].resolved_capabilities))<cr>", opts)

