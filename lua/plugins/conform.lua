return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			["markdown"] = { "markdownlint" },
			["markdown.mdx"] = { "markdownlint" },
			["yaml"] = { "yamlfmt" },
			["yml"] = { "yamlfmt" },
		},
	},
}
