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
		{ "nvim-lua/plenary.nvim" },
		{
			"nvim-neo-tree/neo-tree.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
				"MunifTanjim/nui.nvim",
				"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
			},

			opts = {
				close_if_last_window = true,
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,
				filesystem = {
					filtered_items = {
						visible = true,
						show_hidden_count = true,
						hide_dotfiles = false,
						hide_gitignored = false,
						hide_by_name = { ".git", ".DS_Store", "thumbs.db" },
						never_show = {},
					},
					follow_current_file = {
						enable = true,
						leave_dirs_open = true,
					},
				},
			},
		},
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
			"jakewvincent/mkdnflow.nvim",
			config = function()
				require("mkdnflow").setup({
					-- Config goes here; leave blank for defaults
				})
			end,
		},
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
				html_output = "/tmp/markmap.html", -- (default) Setting a empty string "" here means: [Current buffer path].html
				hide_toolbar = false, -- (default)
				grace_period = 0, -- (default) Stops markmap watch after 60 minutes. Set it to 0 to disable the grace_period.
			},
			config = function(_, opts)
				require("markmap").setup(opts)
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
			"ThePrimeagen/harpoon",
			dependencies = {
				"nvim-lua/plenary.nvim",
			},
		},
		{ "SmiteshP/nvim-navic" }, -- Current code context
		{ "gbprod/yanky.nvim" },
		{ "tpope/vim-abolish" }, -- Word casing

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
		colorscheme = { "tokyonight" },
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
			file_ignore_patterns = {
				"node_modules",
				".git",
			},
			order_by = "asc",
		},
	},
})

require("yanky").setup({
	ring = {
		history_length = 100,
		storage = "shada",
		sync_with_numbered_registers = true,
		cancel_event = "update",
		ignore_registers = { "_" },
		update_register_on_cycle = false,
	},
	system_clipboard = {
		sync_with_ring = true,
	},
})

require("hop").setup({
	multi_windows = true,
})

require("nvim-navic").setup({
	icons = {
		File = "󰈙 ",
		Module = " ",
		Namespace = "󰌗 ",
		Package = " ",
		Class = "󰌗 ",
		Method = "󰆧 ",
		Property = " ",
		Field = " ",
		Constructor = " ",
		Enum = "󰕘",
		Interface = "󰕘",
		Function = "󰊕 ",
		Variable = "󰆧 ",
		Constant = "󰏿 ",
		String = "󰀬 ",
		Number = "󰎠 ",
		Boolean = "◩ ",
		Array = "󰅪 ",
		Object = "󰅩 ",
		Key = "󰌋 ",
		Null = "󰟢 ",
		EnumMember = " ",
		Struct = "󰌗 ",
		Event = " ",
		Operator = "󰆕 ",
		TypeParameter = "󰊄 ",
	},
	lsp = {
		auto_attach = true,
		preference = nil,
	},
	highlight = false,
	separator = " > ",
	depth_limit = 0,
	depth_limit_indicator = "..",
	safe_output = true,
	lazy_update_context = false,
	click = false,
	format_text = function(text)
		return text
	end,
})
