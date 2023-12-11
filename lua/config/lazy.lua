local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
                   lazypath})
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = { -- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
		},
		{ "smoka7/hop.nvim" },
		{ "github/copilot.vim", lazy = false },
		--{ import = "lazyvim.plugins.extras.formatting.prettier" },
		{
			"stevearc/conform.nvim",
			opts = {
				formatters_by_ft = {
					["css"] = { "prettier" },
					["graphql"] = { "prettier" },
					["handlebars"] = { "prettier" },
					["html"] = { "prettier" },
					["javascript"] = { "prettier" },
					["javascriptreact"] = { "prettier" },
					["jsonc"] = { "prettier" },
					["json"] = { "prettier" },
					["less"] = { "prettier" },
					["markdown.mdx"] = { "prettier" },
					["markdown"] = { "prettier" },
					["scss"] = { "prettier" },
					["typescript"] = { "prettier" },
					["typescriptreact"] = { "prettier" },
					["vue"] = { "prettier" },
					["yaml"] = { "prettier" },
				},
			},
		},
		{
			"iamcco/markdown-preview.nvim",
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			ft = { "markdown" },
			build = function()
				vim.fn["mkdp#util#install"]()
			end,
		},
		{ "jparise/vim-graphql" },
		{ "tpope/vim-surround" },
		{ "tomtom/tcomment_vim" },
		{ "mg979/vim-visual-multi" },
		{ "nvim-treesitter/nvim-treesitter-context" },
		{
			"nvim-telescope/telescope-project.nvim",
			opt = {
				display_type = "full",
			},
		},
		{ "ThePrimeagen/vim-be-good" },
		{
			import = "plugins",
		},
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	install = {
		colorscheme = { "tokyonight", "habamax" },
	},
	checker = {
		enabled = true,
	}, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip", -- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

require("telescope").setup({
	extensions = {
		project = {
			base_dirs = {
				{ "/home/itsdmd/Documents/GitHub", max_depth = 1 },
			},
			hidden_files = true,
			order_by = "asc",
		},
	},
})

require("hop").setup({
	multi_windows = true,
})
