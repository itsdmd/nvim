local cmp = require("cmp")
return {
	"hrsh7th/nvim-cmp",
	opts = {
		mapping = {
			["<M-Up>"] = cmp.mapping.scroll_docs(-4),
			["<M-Down>"] = cmp.mapping.scroll_docs(4),
			["<C-Space>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			["<S-CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = false,
			}), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			["<C-CR>"] = function(fallback)
				cmp.abort()
				fallback()
			end,
			["<Tab>"] = vim.NIL,
			["<S-Tab>"] = vim.NIL,
		},
	},
}
