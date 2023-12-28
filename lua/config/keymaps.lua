-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.keymap.set({ "n", "v" }, "n", "hzz")
vim.keymap.set({ "n", "v" }, "e", "jzz")
vim.keymap.set({ "n", "v" }, "i", "kzz")
vim.keymap.set({ "n", "v" }, "o", "lzz")

vim.keymap.set({ "n", "v" }, "{", "{zz", {
	desc = "Prev paragraph",
})
vim.keymap.set({ "n", "v" }, "}", "}zz", {
	desc = "Next paragraph",
})

vim.keymap.set({ "n", "v" }, "<PageUp>", "<PageUp>zz", {})
vim.keymap.set({ "n", "v" }, "<PageDown>", "<PageDown>zz", {})

vim.keymap.set({ "n", "v" }, "j", "nzz", {
	desc = "Next search result",
})
vim.keymap.set({ "n", "v" }, "J", "Nzz", {
	desc = "Prev search result",
})

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
	desc = "Hop pattern",
	silent = true,
})
vim.keymap.set("", "<M-t>", function()
	hop.hint_patterns({
		current_line_only = false,
		hint_offset = -1,
	})
end, {
	desc = "Hop pattern until",
	silent = true,
})

-- Window navigation
vim.keymap.set("", "<C-n>", "<C-w>h", {
	desc = "Got to window left",
})
vim.keymap.set("", "<C-e>", "<C-w>j", {
	desc = "Go to window down",
})
vim.keymap.set("", "<C-i>", "<C-w>k", {
	desc = "Go to window up",
})
vim.keymap.set("", "<C-o>", "<C-w>l", {
	desc = "Go to window right",
})

-- Buffer navigation
vim.keymap.set("n", "<Tab><Tab>", "<C-6>", {
	desc = "Go to previous buffer",
	silent = true,
})
vim.keymap.set("n", "<Tab>o", ":BufferLineCycleNext<CR>", {
	desc = "Go to next buffer",
	silent = true,
})
vim.keymap.set("n", "<Tab>n", ":BufferLineCyclePrev<CR>", {
	desc = "Go to prev buffer",
	silent = true,
})
vim.keymap.set("n", "<Tab><CR>", ":BufferLinePick<CR>", {
	desc = "Select buffer to focus",
	silent = true,
})
vim.keymap.set("n", "<Tab>1", ":BufferLineGoToBuffer 1<CR>", {
	desc = "Go to buffer 1",
	silent = true,
})
vim.keymap.set("n", "<Tab>2", ":BufferLineGoToBuffer 2<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>3", ":BufferLineGoToBuffer 3<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>4", ":BufferLineGoToBuffer 4<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>5", ":BufferLineGoToBuffer 5<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>6", ":BufferLineGoToBuffer 6<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>7", ":BufferLineGoToBuffer 7<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>8", ":BufferLineGoToBuffer 8<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>9", ":BufferLineGoToBuffer 9<CR>", {
	silent = true,
})
vim.keymap.set("n", "<Tab>0", ":BufferLineGoToBuffer 10<CR>", {
	desc = "Go to buffer 10",
	silent = true,
})
vim.keymap.set("n", "<leader><Tab>O", ":BufferLineMoveNext<CR>", {
	desc = "Move buffer right",
	silent = true,
})
vim.keymap.set("n", "<leader><Tab>N", ":BufferLineMovePrev<CR>", {
	desc = "Move buffer left",
	silent = true,
})

-- Harpoon
vim.keymap.set("n", "<leader>hh", ":lua require('harpoon.ui').toggle_quick_menu()<CR>", {
	desc = "Toggle harpoon menu",
	silent = true,
})
vim.keymap.set("n", "<leader>ha", ":lua require('harpoon.mark').add_file()<CR>", {
	desc = "Add file to harpoon",
	silent = true,
})
vim.keymap.set("n", "<leader>hn", ":lua require('harpoon.ui').nav_next()<CR>", {
	desc = "Go to next file",
	silent = true,
})
vim.keymap.set("n", "<leader>hp", ":lua require('harpoon.ui').nav_prev()<CR>", {
	desc = "Go to prev file",
	silent = true,
})
vim.keymap.set("n", "<leader>h1", ":lua require('harpoon.ui').nav_file(1)<CR>", {
	desc = "Go to file 1",
	silent = true,
})
vim.keymap.set("n", "<leader>h2", ":lua require('harpoon.ui').nav_file(2)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h3", ":lua require('harpoon.ui').nav_file(3)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h4", ":lua require('harpoon.ui').nav_file(4)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h5", ":lua require('harpoon.ui').nav_file(5)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h6", ":lua require('harpoon.ui').nav_file(6)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h7", ":lua require('harpoon.ui').nav_file(7)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h8", ":lua require('harpoon.ui').nav_file(8)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h9", ":lua require('harpoon.ui').nav_file(9)<CR>", {
	silent = true,
})
vim.keymap.set("n", "<leader>h0", ":lua require('harpoon.ui').nav_file(10)<CR>", {
	desc = "Go to file 10",
	silent = true,
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

-- Visual Multi
vim.keymap.set("n", "<leader>vm", ":VMSearch<CR>", {
	desc = "VM Search",
	silent = true,
})

-- IncRename
vim.keymap.set("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "IncRename" })

-- -------------- Line -------------- --
vim.keymap.set({ "n", "v" }, "l", "o", {
	desc = "Add a new line below",
})
vim.keymap.set({ "n", "v" }, "L", "O", {
	desc = "Add a new line above",
})
vim.keymap.set({ "n", "v" }, "<M-e>", ":m+<CR>", {
	desc = "Move line down",
	silent = true,
})
vim.keymap.set({ "n", "v" }, "<M-i>", ":m-2<CR>", {
	desc = "Move line up",
	silent = true,
})
vim.keymap.set({ "n", "v" }, "<M-j>", "J", {
	desc = "Join line",
})
vim.keymap.set("n", "<M-x>", ":CommentDividerLine<CR>", {
	desc = "Comment divider line",
	silent = true,
})
vim.keymap.set("n", "<M-X>", ":CommentDividerBox<CR>", {
	desc = "Comment divider box",
	silent = true,
})

-- ------------ Register ------------- --
vim.keymap.set("v", "<leader>p", '"_dP', {
	desc = "Paste register to visual selection",
})

-- yanky
vim.keymap.set({ "n", "v" }, "p", "<Plug>(YankyPutAfter)", {
	desc = "Yanky put after",
})
vim.keymap.set({ "n", "v" }, "P", "<Plug>(YankyPutBefore)", {
	desc = "Yanky put before",
})
vim.keymap.set({ "n", "v" }, "gp", "<Plug>(YankyGPutAfter)", {
	desc = "Yanky gput after",
})
vim.keymap.set({ "n", "v" }, "gP", "<Plug>(YankyGPutBefore)", {
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
vim.keymap.set({ "n", "v" }, "<leader>fp", ":lua require('telescope').extensions.yank_history.yank_history()<CR>", {
	desc = "Yanky history",
})
