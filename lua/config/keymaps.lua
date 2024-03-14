local key = vim.keymap
local opts = { noremap = true, silent = true }

--Directory / navigation / tree.lua
key.set("n", "<leader>j", ":NvimTreeToggle<CR>", opts)    --Toggle tree  show / hide
key.set("n", "<leader>k", ":NvimTreeFocus<CR>", opts)   --Focus on tree 


-- Panel Navgation
key.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
key.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
key.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
key.set("n", "<C-l>", "<C-w>l", opts) -- Navigate right

--Window Management
key.set("n", "<leader>sv", ":vsplit<CR>", opts) -- split Vertical
key.set("n", "<leader>sh", ":split<CR>", opts) -- split Horizontal
key.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle Minimize / maximaze
