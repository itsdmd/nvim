-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.keymap.set({ "n", "v" }, "n", "h", {
	remap = false,
})
vim.keymap.set({ "n", "v" }, "e", "j", {
	remap = false,
})
vim.keymap.set({ "n", "v" }, "i", "k", {
	remap = false,
})

vim.keymap.set({ "n", "v" }, "{", "{zz", {
	remap = false,
	desc = "Previous paragraph",
})
vim.keymap.set({ "n", "v" }, "}", "}zz", {
	remap = false,
	desc = "Next paragraph",
})

vim.keymap.set({ "n", "v" }, "j", "nzz", {
	remap = false,
	desc = "Next search result",
})
vim.keymap.set({ "n", "v" }, "J", "Nzz", {
	remap = false,
	desc = "Previous search result",
})

-- Window navigation
vim.keymap.set("", "<C-n>", "<C-h>", {
	remap = true,
	desc = "Focus left window",
})
vim.keymap.set("", "<C-e>", "<C-j>", {
	remap = true,
	desc = "Focus down window",
})
vim.keymap.set("", "<C-i>", "<C-k>", {
	remap = true,
	desc = "Focus up window",
})
vim.keymap.set("", "<C-o>", "<C-l>", {
	remap = true,
	desc = "Focus right window",
})

-- Page up/down
vim.keymap.set({ "n", "x" }, "<PageUp>", "<PageUp>zz", {
	remap = false,
})
vim.keymap.set({ "n", "x" }, "<PageDown>", "<PageDown>zz", {
	remap = false,
})

-- Hop
local hop = require("hop")
-- local directions = require('hop.hint').HintDirection
vim.keymap.set("", "F", function()
	hop.hint_char1({
		current_line_only = false,
	})
end, {
	remap = false,
	silent = true,
	desc = "Hop char",
})

vim.keymap.set("", "T", function()
	hop.hint_char1({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = false,
	silent = true,
	desc = "Hop char until",
})

vim.keymap.set("", "<M-f>", function()
	hop.hint_patterns({
		current_line_only = false,
	})
end, {
	remap = false,
	silent = true,
	desc = "Hop pattern",
})
vim.keymap.set("", "<M-t>", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	remap = false,
	silent = true,
	desc = "Hop pattern until",
})

-- Telescope Project
vim.keymap.set("n", "<C-p>", ":lua require'telescope'.extensions.project.project{}<CR>", {
	remap = false,
	silent = true,
	desc = "Telescope Project",
})

-- -------------- Mode -------------- --
vim.keymap.set("n", "<S-a>", "i", {
	remap = false,
	desc = "Insert mode",
})

-- -------------- Line -------------- --
vim.keymap.set({ "n", "x" }, "l", "o", {
	remap = false,
	desc = "Add a new line below",
})
vim.keymap.set({ "n", "x" }, "L", "O", {
	remap = false,
	desc = "Add a new line above",
})
vim.keymap.set({ "n", "x" }, "<M-e>", "<M-j>", {
	remap = false,
	desc = "Move line down",
})
vim.keymap.set({ "n", "x" }, "<M-i>", "<M-k>", {
	remap = false,
	desc = "Move line up",
})
vim.keymap.set({ "n", "x" }, "<M-j>", "J", {
	remap = false,
	desc = "Join line",
})

-- ------------ Register ------------- --
vim.keymap.set("v", "<leader>p", '"_dP', {
	remap = false,
	desc = "Paste register to visual selection",
})

-- yanky
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", {
	remap = false,
	desc = "Yanky put after",
})
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", {
	remap = false,
	desc = "Yanky put before",
})
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", {
	remap = false,
	desc = "Yanky gput after",
})
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", {
	remap = false,
	desc = "Yanky gput before",
})
vim.keymap.set("n", "[p", "<Plug>(YankyPreviousEntry)", {
	remap = false,
	desc = "Yanky previous entry",
})
vim.keymap.set("n", "]p", "<Plug>(YankyNextEntry)", {
	remap = false,
	desc = "Yank next entry",
})
vim.keymap.set("n", ">p", "<Plug>(YankyPutIndentAfterLinewise)", {
	remap = false,
	desc = "Yanky put indent after linewise",
})
vim.keymap.set("n", "<p", "<Plug>(YankyPutIndentBeforeLinewise)", {
	remap = false,
	desc = "Yanky put indent before linewise",
})
vim.keymap.set({ "n", "x" }, "<leader>fp", ":lua require('telescope').extensions.yank_history.yank_history()<CR>", {
	remap = false,
	desc = "Yanky history",
})
