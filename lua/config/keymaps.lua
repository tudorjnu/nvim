-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = function(mode, key, result, desc)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true, desc = desc })
end

-- Disable keymaps
vim.keymap.set("n", "<S-l>", "<NOP>")
vim.keymap.set("n", "<S-h>", "<NOP>")

map("n", "<leader>v", "<cmd>vsplit<CR>", "Vertical Split")
map("n", "<leader>h", "<cmd>split<CR>", "Horizontal Split")
