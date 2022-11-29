vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- To close vim
keymap.set("n", "<C-c>", ":qa<CR>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

local changeTab = function(number)
	vim.cmd(":BufferGoto" .. number)
end

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":BufferClose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":BufferNext<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":BufferPrevious<CR>") --  go to previous tab
keymap.set("n", "<leader>cat", ":BufferCloseAllButCurrent<CR>") -- close all tabs but the current one
keymap.set("n", "<leader>t2", function()
	print(arg)
end)

-- plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- eslint formatter
keymap.set("n", "F", ":Format<cr>")

-- terminal
keymap.set("t", "<ESC>", "<C-\\><C-n>")
keymap.set("n", "<leader>gt", ":lua _LAZYGIT_TOGGLE()<cr>")
