-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Enable Copilot when VimEnter
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	pattern = { "*" },
	command = "Copilot enable",
})

-- Disable Copilot for filetypes
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = {
		"*.md",
	},
	command = "Copilot disable",
})

-- Change shiftwidth to 2 for yaml, markdown
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = {
		"*.yaml",
		"*.yml",
		"*.md",
	},
	command = "setlocal shiftwidth=2",
})
