-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- ----------- Navigation ----------- --
vim.keymap.set({ "n", "v" }, "<Left>", "hzz")
vim.keymap.set({ "n", "v" }, "<Down>", "gjzz")
vim.keymap.set({ "n", "v" }, "<Up>", "gkzz")
vim.keymap.set({ "n", "v" }, "<Right>", "lzz")
vim.keymap.set({ "i" }, "<Down>", "<Esc>gjzza")
vim.keymap.set({ "i" }, "<Up>", "<Esc>gkzza")

-- Move to begin/end of displayed line
vim.keymap.set({ "n", "v" }, "<Home>", "g^zz")
vim.keymap.set({ "n", "v" }, "<End>", "g<End>zz")
-- Move to begin/end of file line
vim.keymap.set({ "n", "v" }, "<S-Home>", "^zz")
vim.keymap.set({ "n", "v" }, "<S-End>", "<End>zz")

vim.keymap.set({ "n", "v" }, "{", "{zz", {
	desc = "Prev paragraph",
})
vim.keymap.set({ "n", "v" }, "}", "}zz", {
	desc = "Next paragraph",
})

vim.keymap.set({ "n", "v" }, "<PageUp>", "<C-U>zz", {})
vim.keymap.set({ "n", "v" }, "<PageDown>", "<C-D>zz", {})

vim.keymap.set({ "i" }, "<PageUp>", "<Esc><C-U>zza", {})
vim.keymap.set({ "i" }, "<PageDown>", "<Esc><C-D>zza", {})

vim.keymap.set({ "n", "v" }, "n", "nzz", {
	desc = "Next search result",
})
vim.keymap.set({ "n", "v" }, "N", "Nzz", {
	desc = "Prev search result",
})

-- -- Window navigation
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
vim.keymap.set("n", "<Tab>w", ":BufferLinePick<CR>", {
	desc = "Pick buffer to jump to",
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
vim.keymap.set("n", "<Tab>f", ":BufferLineGoToBuffer 1<CR>", {
	desc = "Go to first buffer",
	silent = true,
})
vim.keymap.set("n", "<Tab>l", ":BufferLineGoToBuffer -1<CR>", {
	desc = "Go to last buffer",
	silent = true,
})
vim.keymap.set("n", "<Tab>e", ":BufferLineMovePrev<CR>", {
	desc = "Move buffer left",
	silent = true,
})
vim.keymap.set("n", "<Tab>i", ":BufferLineMoveNext<CR>", {
	desc = "Move buffer right",
	silent = true,
})
vim.keymap.set("n", "d<Tab>w", ":BufferLinePickClose<CR>", {
	desc = "Pick buffer to close",
	silent = true,
})
vim.keymap.set("n", "d<Tab>n", ":BufferLineCloseLeft<CR>", {
	desc = "Close left buffers",
	silent = true,
})
vim.keymap.set("n", "d<Tab>o", ":BufferLineCloseRight<CR>", {
	desc = "Close right buffers",
	silent = true,
})
vim.keymap.set("n", "d<Tab>x", ":BufferLineCloseOthers<CR>", {
	desc = "Close other buffers",
	silent = true,
})
vim.keymap.set("n", "<Tab>g", ":BufferLineGroupToggle ", {
	desc = "Toggle buffer group",
	silent = true,
})
vim.keymap.set("n", "d<Tab>g", ":BufferLineGroupClose ", {
	desc = "Close buffer group",
	silent = true,
})
vim.keymap.set("n", "<Tab><Space>", ":BufferLinePick<CR>", {
	desc = "Select buffer to focus",
	silent = true,
})
vim.keymap.set("n", "g<Tab>1", ":BufferLineGoToBuffer 1<CR>", {
	desc = "Go to buffer 1 (alt: <Tab>f)",
	silent = true,
})
vim.keymap.set("n", "g<Tab>2", ":BufferLineGoToBuffer 2<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>3", ":BufferLineGoToBuffer 3<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>4", ":BufferLineGoToBuffer 4<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>5", ":BufferLineGoToBuffer 5<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>6", ":BufferLineGoToBuffer 6<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>7", ":BufferLineGoToBuffer 7<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>8", ":BufferLineGoToBuffer 8<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>9", ":BufferLineGoToBuffer 9<CR>", {
	desc = "",
	silent = true,
})
vim.keymap.set("n", "g<Tab>0", ":BufferLineGoToBuffer 10<CR>", {
	desc = "Go to buffer 10",
	silent = true,
})
vim.keymap.set("n", "g<Tab>-", ":BufferLineGoToBuffer -1<CR>", {
	desc = "Go to last buffer (alt: <Tab>l)",
	silent = true,
})

-- -------------- Mode -------------- --
-- vim.keymap.set("n", "<S-a>", "i", {
-- 	desc = "Insert mode",
-- })

-- Visual Multi
vim.keymap.set("n", "<leader>v", ":VMSearch<CR>", {
	desc = "VM Search",
	silent = true,
})

-- IncRename
vim.keymap.set("n", "<leader>rn", function()
	return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true, desc = "IncRename" })

-- -------------- Line -------------- --
-- vim.keymap.set({ "n", "v" }, "l", "o", {
-- 	desc = "Add a new line below",
-- })
-- vim.keymap.set({ "n", "v" }, "L", "O", {
-- 	desc = "Add a new line above",
-- })
vim.keymap.set({ "n", "v" }, "<M-e>", ":m+<CR>", {
	desc = "Move line down",
	silent = true,
})
vim.keymap.set({ "n", "v" }, "<M-i>", ":m-2<CR>", {
	desc = "Move line up",
	silent = true,
})
-- vim.keymap.set({ "n", "v" }, "<M-j>", "J", {
-- 	desc = "Join line",
-- })
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

vim.keymap.set("n", "yp", ':let @+ = expand("%:p")<CR>', {
	desc = "Yank current file path",
})
vim.keymap.set("n", "yP", ':let @+ = expand("%:t")<CR>', {
	desc = "Yank current file name",
})

-- yanky
vim.keymap.set({ "n", "v" }, "<leader>fp", ":lua require('telescope').extensions.yank_history.yank_history()<CR>", {
	desc = "Yanky history",
})
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
