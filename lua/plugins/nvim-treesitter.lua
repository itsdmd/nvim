return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-ts-autotag").setup()
	end,
}
