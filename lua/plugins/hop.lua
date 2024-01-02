return {
	"phaazon/hop.nvim",
	opts = {
		keys = "ntesiroalpufywkvbmcxzq",
		case_insensitive = true,
		multi_windows = true,
	},

	config = function()
		require("hop").setup()
		local hop = require("hop")

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
	end,
}
