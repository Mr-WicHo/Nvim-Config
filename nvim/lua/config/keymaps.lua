local key = vim.keymap
local opts = { noremap = true, silent = true }

--Directory / navigation / tree.lua
key.set("n", "<leader>j", ":NvimTreeToggle<CR>", opts)    --Toggle tree  show / hide
key.set("n", "<leader>k", ":NvimTreeFocus<CR>", opts)   --Focus on tree

--save an quit all
key.set("n","<leader>wq", ":wqa<CR>",opts)   --write, quit all
key.set("n","<leader>qq", ":q<CR>",opts)   --write, quit all
key.set("n","<leader>ss", ":w<CR>",opts)   --write, quit all

-- Panel Navgation
key.set("n", "<C-h>", "<C-w>h", opts) -- Navigate left
key.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
key.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
key.set("n", "<C-l>", "<C-w>l", opts) -- Navigate right

--buffer nav
key.set("n", "<C-w>", ":bd<CR>", opts) -- Close buffer
key.set("n", "<C-S-w>", ":bd!<CR>", opts) -- Close buffer
key.set("n", "<C-p>", ":bn<CR>", opts) -- Close buffer
key.set("n", "<C-n>", ":bp<CR>", opts) -- Close buffer

--Window Management
key.set("n", "<leader>sv", ":vsplit<CR>", opts) -- split Vertical
key.set("n", "<leader>sh", ":split<CR>", opts) -- split Horizontal
key.set("n", "<leader>sm", ":MaximizerToggle<CR>", opts) -- toggle Minimize / maximaze

--indentation
    --  v-mode
key.set("v", "<", "<v")
key.set("v", ">", ">v")
    --  n-mode
key.set("n", "<", "v<")
key.set("n", ">", "v>")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", {})
vim.api.nvim_set_keymap("v", "<C-_>", "gb", {noremap = false})


--other--
key.set("n", "<leader>p", "\"_dP", opts)
--remove keybinds

