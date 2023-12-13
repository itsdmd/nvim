-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.keymap.set({ "n", "v" }, "n", "h")
vim.keymap.set({ "n", "v" }, "e", "j")
vim.keymap.set({ "n", "v" }, "i", "k")

vim.keymap.set({ "n", "v" }, "{", "{zz", {
	desc = "Prev paragraph",
})
vim.keymap.set({ "n", "v" }, "}", "}zz", {
	desc = "Next paragraph",
})

vim.keymap.set({ "n", "v" }, "j", "nzz", {
	desc = "Next search result",
})
vim.keymap.set({ "n", "v" }, "J", "Nzz", {
	desc = "Prev search result",
})

-- Window navigation
vim.keymap.set("", "<C-n>", "<C-h>", {
	desc = "Focus left window",
})
vim.keymap.set("", "<C-e>", "<C-j>", {
	desc = "Focus down window",
})
vim.keymap.set("", "<C-i>", "<C-k>", {
	desc = "Focus up window",
})
vim.keymap.set("", "<C-o>", "<C-l>", {
	desc = "Focus right window",
})

-- Page up/down
vim.keymap.set({ "n", "x" }, "<PageUp>", "<PageUp>zz", {})
vim.keymap.set({ "n", "x" }, "<PageDown>", "<PageDown>zz", {})

-- Hop
local hop = require("hop")
-- local directions = require('hop.hint').HintDirection
vim.keymap.set("", "F", function()
	hop.hint_char1({
		current_line_only = false,
	})
end, {
	silent = true,
	desc = "Hop char",
})

vim.keymap.set("", "T", function()
	hop.hint_char1({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	silent = true,
	desc = "Hop char until",
})

vim.keymap.set("", "<M-f>", function()
	hop.hint_patterns({
		current_line_only = false,
	})
end, {
	silent = true,
	desc = "Hop pattern",
})
vim.keymap.set("", "<M-t>", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	silent = true,
	desc = "Hop pattern until",
})

-- Telescope Project
vim.keymap.set("n", "<C-p>", ":lua require'telescope'.extensions.project.project{}<CR>", {
	desc = "Telescope Project",
	silent = true,
})

-- -------------- Mode -------------- --
vim.keymap.set("n", "<S-a>", "i", {
	desc = "Insert mode",
})

-- -------------- Line -------------- --
vim.keymap.set({ "n", "x" }, "l", "o", {
	desc = "Add a new line below",
})
vim.keymap.set({ "n", "x" }, "L", "O", {
	desc = "Add a new line above",
})
vim.keymap.set({ "n", "x" }, "<M-e>", ":m+<CR>", {
	desc = "Move line down",
	silent = true,
})
vim.keymap.set({ "n", "x" }, "<M-i>", ":m-2<CR>", {
	desc = "Move line up",
	silent = true,
})
vim.keymap.set({ "n", "x" }, "<M-j>", "J", {
	desc = "Join line",
})

-- ------------ Register ------------- --
vim.keymap.set("v", "<leader>p", '"_dP', {
	desc = "Paste register to visual selection",
})

-- yanky
vim.keymap.set({ "n", "x" }, "p", "<Plug>(YankyPutAfter)", {
	desc = "Yanky put after",
})
vim.keymap.set({ "n", "x" }, "P", "<Plug>(YankyPutBefore)", {
	desc = "Yanky put before",
})
vim.keymap.set({ "n", "x" }, "gp", "<Plug>(YankyGPutAfter)", {
	desc = "Yanky gput after",
})
vim.keymap.set({ "n", "x" }, "gP", "<Plug>(YankyGPutBefore)", {
	desc = "Yanky gput before",
})
vim.keymap.set("n", "[p", "<Plug>(YankyPreviousEntry)", {
	desc = "Yanky previous entry",
})
vim.keymap.set("n", "]p", "<Plug>(YankyNextEntry)", {
	desc = "Yank next entry",
})
vim.keymap.set("n", ">p", "<Plug>(YankyPutIndentAfterLinewise)", {
	desc = "Yanky put indent after linewise",
})
vim.keymap.set("n", "<p", "<Plug>(YankyPutIndentBeforeLinewise)", {
	desc = "Yanky put indent before linewise",
})
vim.keymap.set({ "n", "x" }, "<leader>fp", ":lua require('telescope').extensions.yank_history.yank_history()<CR>", {
	desc = "Yanky history",
})
