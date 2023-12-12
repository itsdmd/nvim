-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.keymap.set({ "n", "v" }, "n", "h", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "e", "j", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "i", "k", {
	noremap = true,
})

vim.keymap.set({ "n", "v" }, "{", "{zz", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "}", "}zz", {
	noremap = true,
})

-- Next search result
vim.keymap.set({ "n", "v" }, "j", "nzz", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "J", "Nzz", {
	noremap = true,
})

-- Window navigation
vim.api.nvim_set_keymap("", "<C-n>", "<C-h>", {
	noremap = false,
})
vim.api.nvim_set_keymap("", "<C-e>", "<C-j>", {
	noremap = false,
})
vim.api.nvim_set_keymap("", "<C-i>", "<C-k>", {
	noremap = false,
})
vim.api.nvim_set_keymap("", "<C-o>", "<C-l>", {
	noremap = false,
})

-- Page up/down
vim.keymap.set({ "n", "v" }, "<PageUp>", "<PageUp>zz", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "<PageDown>", "<PageDown>zz", {
	noremap = true,
})

-- Hop
local hop = require("hop")
-- local directions = require('hop.hint').HintDirection
vim.keymap.set("", "F", function()
	hop.hint_char1({
		current_line_only = false,
	})
end, {
	remap = true,
	silent = true,
})

vim.keymap.set("", "T", function()
	hop.hint_char1({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = true,
	silent = true,
})

vim.keymap.set("", "<M-f>", function()
	hop.hint_patterns({
		current_line_only = false,
	})
end, {
	remap = true,
	silent = true,
})
vim.keymap.set("", "<M-t>", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = true,
	silent = true,
})

-- Telescope Project
vim.keymap.set(
	"n",
	"<C-p>",
	":lua require'telescope'.extensions.project.project{}<CR>",
	{ noremap = true, silent = true }
)

-- -------------- Mode -------------- --
vim.keymap.set("n", "<S-a>", "i", {
	noremap = true,
})

-- -------------- Line -------------- --
-- Add a new line below
vim.keymap.set({ "n", "v" }, "l", "o", {
	noremap = true,
})
-- Add a new line above
vim.keymap.set({ "n", "v" }, "L", "O", {
	noremap = true,
})
-- Move line down
vim.keymap.set({ "n", "v" }, "<A-e>", "<A-j>", {
	noremap = true,
})
-- Move line up
vim.keymap.set({ "n", "v" }, "<A-i>", "<A-k>", {
	noremap = true,
})
-- Join line
vim.keymap.set({ "n", "v" }, "<M-j>", "J", {
	noremap = true,
})

-- ------------ Register ------------- --
-- Paste register to visual selection
vim.keymap.set("v", "<leader>p", '"_dP', {
	noremap = true,
})
