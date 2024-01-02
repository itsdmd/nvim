return {
	"nvim-telescope/telescope.nvim",
	opts = {
		extensions = {
			project = {
				base_dirs = {
					{ "/home/itsdmd/Documents/GitHub", max_depth = 1 },
				},
				hidden_files = true,
				file_ignore_patterns = {
					"node_modules",
					".git",
				},
				order_by = "asc",
			},
		},
	},

	config = function()
		vim.keymap.set("n", "<C-p>", ":lua require'telescope'.extensions.project.project{}<CR>", {
			desc = "Telescope Project",
			silent = true,
		})
	end,
}
