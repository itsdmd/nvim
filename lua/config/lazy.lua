local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    -- bootstrap lazy.nvim
    -- stylua: ignore
    vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
                   lazypath})
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
		},

		-- motion/navigation
		{ "smoka7/hop.nvim" },
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-neo-tree/neo-tree.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
				"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
			},
		},
		{
			"ThePrimeagen/harpoon",
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		},
		{
			"jakewvincent/mkdnflow.nvim", -- improve markdown links behavior
			config = function()
				require("mkdnflow").setup({
					-- Config goes here; leave blank for defaults
				})
			end,
		},

		-- beautify
		{ "stevearc/conform.nvim" },
		{ "fatih/vim-go" },

		-- editor
		{ "fangjunzhou/comment-divider.nvim" },
		{ "gaoDean/autolist.nvim" },
		{ "hiphish/rainbow-delimiters.nvim" }, -- rainbow parentheses
		{ "jparise/vim-graphql" },
		{ "mg979/vim-visual-multi" },
		{ "nvim-treesitter/nvim-treesitter-context" },
		{ "tomtom/tcomment_vim" },
		{ "tpope/vim-abolish" }, -- Word casing
		{ "tpope/vim-surround" },

		-- utilities
		{
			"iamcco/markdown-preview.nvim",
			cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
			ft = { "markdown" },
			build = function()
				vim.fn["mkdp#util#install"]()
			end,
		},
		{
			"Zeioth/markmap.nvim",
			cmd = { "MarkmapOpen", "MarkmapSave", "MarkmapWatch", "MarkmapWatchStop" },
			opts = {
				html_output = "./markmap.html", -- Setting a empty string "" here means: [Current buffer path].html
				hide_toolbar = false,
				grace_period = 0, -- Stops markmap watch after 60 minutes.
			},
			config = function(_, opts)
				require("markmap").setup(opts)
			end,
		},
		{
			"nvim-telescope/telescope-project.nvim",
			opt = {
				display_type = "full",
			},
		},
		{
			"smjonas/inc-rename.nvim",
			config = function()
				require("inc_rename").setup()
			end,
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
