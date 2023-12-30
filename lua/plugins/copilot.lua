return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	opts = {
		suggestion = {
			enabled = true,
			keymap = {},
		},
		panel = { enabled = false },
		filetypes = {
			markdown = false,
		},
	},
}
