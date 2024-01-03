-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Change shiftwidth to 2 for yaml, markdown
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = {
		"*.md",
		"*.yaml",
		"*.yml",
	},
	command = "setlocal shiftwidth=2",
})

-- Disable spell checking
vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
