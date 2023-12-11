-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.api.nvim_set_keymap("n", "n", "h", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "e", "j", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "i", "k", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "o", "l", {
	noremap = true,
})

vim.api.nvim_set_keymap("v", "n", "h", {
	noremap = true,
})
vim.api.nvim_set_keymap("v", "e", "j", {
	noremap = true,
})
vim.api.nvim_set_keymap("v", "i", "k", {
	noremap = true,
})
vim.api.nvim_set_keymap("v", "o", "l", {
	noremap = true,
})

vim.api.nvim_set_keymap("n", "<S-h>", "<S-n>", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "<S-l>", "<S-o>", {
	noremap = true,
})
vim.api.nvim_set_keymap("v", "<S-h>", "<S-n>", {
	noremap = true,
})
vim.api.nvim_set_keymap("v", "<S-l>", "<S-o>", {
	noremap = true,
})

vim.api.nvim_set_keymap("n", "{", "{zz", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "}", "}zz", {
	noremap = true,
})

-- Next search result
vim.api.nvim_set_keymap("n", "j", "nzz", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "J", "Nzz", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "<M-j>", "J", {
	noremap = true,
})

-- Window navigation
vim.api.nvim_set_keymap("n", "<C-n>", "<C-h>", {
	noremap = false,
})
vim.api.nvim_set_keymap("n", "<C-e>", "<C-j>", {
	noremap = false,
})
vim.api.nvim_set_keymap("n", "<C-i>", "<C-k>", {
	noremap = false,
})
vim.api.nvim_set_keymap("n", "<C-o>", "<C-l>", {
	noremap = false,
})

-- Page up/down
vim.api.nvim_set_keymap("n", "<PageUp>", "<PageUp>zz", {
	noremap = true,
})
vim.api.nvim_set_keymap("n", "<PageDown>", "<PageDown>zz", {
	noremap = true,
})

-- Hop
local hop = require("hop")
-- local directions = require('hop.hint').HintDirection
vim.keymap.set("", "fa", function()
	hop.hint_char1({
		current_line_only = false,
	})
end, {
	remap = true,
	silent = true,
})
vim.keymap.set("", "fl", function()
	hop.hint_char1({
		current_line_only = true,
	})
end, {
	remap = true,
	silent = true,
})
vim.api.nvim_set_keymap("", "ff", "f", {
	noremap = true,
	silent = true,
})

vim.keymap.set("", "ta", function()
	hop.hint_char1({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = true,
	silent = true,
})
vim.keymap.set("", "tl", function()
	hop.hint_char1({
		current_line_only = true,
		hint_offset = -1,
	})
end, {
	remap = true,
	silent = true,
})
vim.api.nvim_set_keymap("", "tt", "t", {
	noremap = true,
	silent = true,
})

-- Pattern
vim.keymap.set("", "fp", function()
	hop.hint_patterns({
		current_line_only = false,
	})
end, {
	noremap = true,
})
vim.keymap.set("", "tp", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	noremap = true,
})

-- Jump to context (nvim-treesitter-context)
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context()
end, { silent = true, noremap = true })

-- Telescope Project
vim.api.nvim_set_keymap(
	"n",
	"<C-p>",
	":lua require'telescope'.extensions.project.project{}<CR>",
	{ noremap = true, silent = true }
)

-- -------------- Mode -------------- --
vim.api.nvim_set_keymap("n", "<S-a>", "i", {
	noremap = true,
})

-- -------------- Line -------------- --
-- Add a new line below
vim.api.nvim_set_keymap("n", "l", "o", {
	noremap = true,
})
-- Add a new line above
vim.api.nvim_set_keymap("n", "L", "O", {
	noremap = true,
})
-- Move line down
vim.api.nvim_set_keymap("n", "<A-e>", "<A-j>", {
	noremap = false,
})
-- Move line up
vim.api.nvim_set_keymap("n", "<A-i>", "<A-k>", {
	noremap = false,
})

-- ------------- Action ------------- --
-- Paste register to visual selection
vim.api.nvim_set_keymap("x", "<leader>p", '"_dP', {
	noremap = true,
})
