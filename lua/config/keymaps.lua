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

-- Next search result
vim.api.nvim_set_keymap("n", "j", "n", {
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

-- Hop
local hop = require("hop")
-- local directions = require('hop.hint').HintDirection
vim.keymap.set("", "f", function()
  hop.hint_char1({
    current_line_only = false,
  })
end, {
  remap = true,
})
vim.keymap.set("", "F", function()
  hop.hint_char2({
    current_line_only = false,
  })
end, {
  remap = true,
})
vim.keymap.set("", "t", function()
  hop.hint_char1({
    current_line_only = false,
    hint_offset = -1,
  })
end, {
  remap = true,
})
vim.keymap.set("", "T", function()
  hop.hint_char2({
    current_line_only = false,
    hint_offset = -1,
  })
end, {
  remap = true,
})

-- Jump to context (nvim-treesitter-context)
vim.keymap.set("n", "[c", function()
  require("treesitter-context").go_to_context()
end, { silent = true, noremap = true })

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
-- Move line down with Alt + E
vim.api.nvim_set_keymap("n", "<A-e>", "<A-j>", {
  noremap = false,
})
-- Move line up with Alt + I
vim.api.nvim_set_keymap("n", "<A-i>", "<A-k>", {
  noremap = false,
})
