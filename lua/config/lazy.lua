local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{
			"LazyVim/LazyVim",
			import = "lazyvim.plugins",
		},

		-- languages
		-- java
		-- {
		-- 	"nvim-java/nvim-java",
		-- 	dependencies = {
		-- 		"nvim-java/lua-async-await",
		-- 		"nvim-java/nvim-java-core",
		-- 		"nvim-java/nvim-java-test",
		-- 		"nvim-java/nvim-java-dap",
		-- 		"nvim-java/nvim-java-refactor",
		-- 		"MunifTanjim/nui.nvim",
		-- 		"neovim/nvim-lspconfig",
		-- 		"mfussenegger/nvim-dap",
		-- 		"nvim-java/nvim-java-refactor",
		-- 		{
		-- 			"williamboman/mason.nvim",
		-- 			opts = {
		-- 				registries = {
		-- 					"github:nvim-java/mason-registry",
		-- 					"github:mason-org/mason-registry",
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- 	config = function()
		-- 		require("java").setup()
		-- 		require("lspconfig").jdtls.setup({})
		-- 	end,
		-- },

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
		{ "windwp/nvim-ts-autotag" },

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
		-- {
		-- 	"epwalsh/obsidian.nvim",
		-- 	version = "*", -- recommended, use latest release instead of latest commit
		-- 	lazy = false,
		-- 	ft = "markdown",
		-- 	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
		-- 	-- event = {
		-- 	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
		-- 	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
		-- 	--   "BufReadPre path/to/my-vault/**.md",
		-- 	--   "BufNewFile path/to/my-vault/**.md",
		-- 	-- },
		-- 	dependencies = {
		-- 		-- Required.
		-- 		"nvim-lua/plenary.nvim",
		-- 	},
		-- 	opts = {
		-- 		workspaces = {
		-- 			{
		-- 				name = "personal",
		-- 				path = "/home/itsdmd/Nextcloud/Documents/Obsidian/Personal",
		-- 			},
		-- 		},
		-- 		completion = {
		-- 			-- Set to false to disable completion.
		-- 			nvim_cmp = true,
		-- 			-- Trigger completion at 2 chars.
		-- 			min_chars = 2,
		-- 		},
		--
		-- 		mappings = {
		-- 			-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
		-- 			["gf"] = {
		-- 				action = function()
		-- 					return require("obsidian").util.gf_passthrough()
		-- 				end,
		-- 				opts = { noremap = false, expr = true, buffer = true },
		-- 			},
		-- 			-- Toggle check-boxes.
		-- 			["<leader>ch"] = {
		-- 				action = function()
		-- 					return require("obsidian").util.toggle_checkbox()
		-- 				end,
		-- 				opts = { buffer = true },
		-- 			},
		-- 			-- Smart action depending on context, either follow link or toggle checkbox.
		-- 			["<cr>"] = {
		-- 				action = function()
		-- 					return require("obsidian").util.smart_action()
		-- 				end,
		-- 				opts = { buffer = true, expr = true },
		-- 			},
		-- 		},
		--
		-- 		-- Optional, customize how note IDs are generated given an optional title.
		-- 		---@param title string|?
		-- 		---@return string
		-- 		note_id_func = function(title)
		-- 			-- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
		-- 			-- In this case a note with the title 'My new note' will be given an ID that looks
		-- 			-- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
		-- 			local suffix = ""
		-- 			if title ~= nil then
		-- 				-- If title is given, transform it into valid file name.
		-- 				suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
		-- 			else
		-- 				-- If title is nil, just add 4 random uppercase letters to the suffix.
		-- 				for _ = 1, 4 do
		-- 					suffix = suffix .. string.char(math.random(65, 90))
		-- 				end
		-- 			end
		-- 			return tostring(os.time()) .. "-" .. suffix
		-- 		end,
		--
		-- 		-- Where to put new notes. Valid options are
		-- 		--  * "current_dir" - put new notes in same directory as the current buffer.
		-- 		--  * "notes_subdir" - put new notes in the default notes subdirectory.
		-- 		new_notes_location = "current_dir",
		--
		-- 		-- Either "wiki" or "markdown".
		-- 		preferred_link_style = "markdown",
		-- 	},
		-- },
		{
			"Exafunction/codeium.nvim",
			dependencies = {
				"nvim-lua/plenary.nvim",
				"hrsh7th/nvim-cmp",
			},
			config = function()
				require("codeium").setup({})
			end,
		},
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
