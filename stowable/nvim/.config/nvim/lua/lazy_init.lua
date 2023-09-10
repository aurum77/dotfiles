local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			require("plugins.indent-blankline")
			vim.cmd.colorscheme("gruvbox")
			require("core.theme")
		end,
	},
	{
		"akinsho/flutter-tools.nvim",
		config = function()
			require("plugins.flutter-tools")
		end,
		ft = "dart",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim",
		},
	},
	{
		"nvim-telescope/telescope.nvim",
		config = function()
			require("plugins.telescope")
		end,
		cmd = "Telescope",
	},
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("plugins.nvim-treesitter")
		end,
		dependencies = {
			"windwp/nvim-ts-autotag",
			{
				"nvim-treesitter/nvim-treesitter-context",
				config = function()
					require("plugins.treesitter-context")
				end,
			},
		},
		event = "InsertEnter",
	},
	{
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("plugins.nvim-tree")
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("plugins.nvim-autopairs")
		end,
		event = "InsertEnter",
	},
	{
		"nvim-lualine/lualine.nvim",
		config = function()
			require("plugins.lualine")
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("plugins.mason")
			require("plugins.lspconfig")
		end,
		dependencies = {
			{
				"williamboman/mason-lspconfig.nvim",
				config = function()
					require("plugins.mason-lspconfig")
				end,
			},
			{
				"neovim/nvim-lspconfig",
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("plugins.mason-tool-installer")
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			require("plugins.nvim-cmp")
		end,
		event = { "InsertEnter", "CmdlineEnter" },
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"saadparwaiz1/cmp_luasnip",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-cmdline",
			"rafamadriz/friendly-snippets",
			{
				"L3MON4D3/LuaSnip",
				config = function()
					require("plugins.luasnip")
				end,
				event = "InsertEnter",
			},
		},
	},
	{
		"iamcco/markdown-preview.nvim",
		config = function()
			require("plugins.markdown-preview")
		end,
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		ft = "markdown",
	},
	{
		"numToStr/Comment.nvim",
		config = function()
			require("plugins.comment")
		end,
		event = "LspAttach",
	},
	{
		"NTBBloodbath/rest.nvim",
		config = function()
			require("plugins.rest")
		end,
		ft = "http",
	},
	{
		"onsails/lspkind.nvim",
	},
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("plugins.toggleterm")
		end,
		cmd = "ToggleTerm",
	},
	{
		"kyazdani42/nvim-web-devicons",
		config = function()
			require("plugins.nvim-web-devicons")
		end,
	},
	{
		"mhartington/formatter.nvim",
		config = function()
			require("plugins.formatter")
		end,
		cmd = "Format",
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("plugins.nvim-surround")
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("plugins.gitsigns")
		end,
	},
	{
		"aurum77/live-server.nvim",
		config = function()
			require("plugins.live-server")
		end,
		cmd = {
			"LiveServer",
			"LiveServerStart",
			"LiveServerStop",
			"LiveServerInstall",
		},
		build = function()
			require("live_server.util").install()
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
	},
	{
		dir = "~/code/nvim/dotnet.nvim",
		config = function()
			require("plugins.dotnet")
		end,
		ft = { "cs", "solution" },
	},
	{
		"ThePrimeagen/vim-be-good",
		cmd = "VimBeGood",
	},
	{
		"folke/trouble.nvim",
		config = function()
			require("plugins.trouble")
		end,
		event = "LspAttach",
	},
	{
		"stevearc/dressing.nvim",
		config = function()
			require("plugins.dressing")
		end,
		event = "VeryLazy",
	},
	{
		"chrishrb/gx.nvim",
		config = function()
			require("plugins.gx")
		end,
	},
	{
		"folke/neodev.nvim",
		config = function()
			require("plugins.neodev")
		end,
		ft = "lua",
	},
	{
		"utilyre/barbecue.nvim",
		config = function()
			require("plugins.barbecue")
		end,
		dependencies = {
			"SmiteshP/nvim-navic",
		},
		event = "LspAttach",
	},
	{
		"rcarriga/nvim-notify",
		config = function()
			require("plugins.notify")
		end,
		event = "BufEnter",
	},
	{
		"j-hui/fidget.nvim",
		tag = "legacy",
		event = "LspAttach",
		config = function()
			require("plugins.fidget")
		end,
	},
}, {
	install = {
		colorscheme = { "gruvbox" },
	},
})
