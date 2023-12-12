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
vim.keymap.set({ "n", "v" }, "o", "l", {
	noremap = true,
})

vim.keymap.set({ "n", "v" }, "<S-h>", "<S-n>", {
	noremap = true,
})
vim.keymap.set({ "n", "v" }, "<S-l>", "<S-o>", {
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
vim.keymap.set({ "n", "v" }, "<M-j>", "J", {
	noremap = true,
})

-- Window navigation
vim.keymap.set("n", "<C-n>", "<C-h>", {
	noremap = false,
})
vim.keymap.set("n", "<C-e>", "<C-j>", {
	noremap = false,
})
vim.keymap.set("n", "<C-i>", "<C-k>", {
	noremap = false,
})
vim.keymap.set("n", "<C-o>", "<C-l>", {
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
vim.keymap.set("", "ff", "f", {
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
vim.keymap.set("", "tt", "t", {
	noremap = true,
	silent = true,
})

vim.keymap.set("", "fp", function()
	hop.hint_patterns({
		current_line_only = false,
	})
end, {
	remap = true,
	silent = true,
})
vim.keymap.set("", "tp", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = true,
	silent = true,
})

-- Jump to context (nvim-treesitter-context)
vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context()
end, { noremap = true, silent = true })

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
vim.keymap.set("n", "l", "o", {
	noremap = true,
})
-- Add a new line above
vim.keymap.set("n", "L", "O", {
	noremap = true,
})
-- Move line down
vim.keymap.set("n", "<A-e>", "<A-j>", {
	noremap = false,
})
-- Move line up
vim.keymap.set("n", "<A-i>", "<A-k>", {
	noremap = false,
})

-- ------------- Action ------------- --
-- Paste register to visual selection
vim.keymap.set("x", "<leader>p", '"_dP', {
	noremap = true,
})
