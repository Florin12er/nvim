-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`

return require("packer").startup(function(use)
	require("packer").startup(function()
		use({
			"stevearc/conform.nvim",
			event = { "BufReadPre", "BufNewFile" },
			config = function()
				local conform = require("conform")
				conform.setup({
					formatters_by_ft = {
						javascript = { "prettier" },
						typescript = { "prettier" },
						javascriptreact = { "prettier" },
						typescriptreact = { "prettier" },
						svelte = { "prettier" },
						css = { "prettier" },
						html = { "prettier" },
						json = { "prettier" },
						graphql = { "prettier" },
						lua = { "stylua" },
						golang = { "golines" },
					},
					format_on_save = {
						lsp_fallback = true,
						async = false,
						timeout_ms = 500,
					},
					vim.api.nvim_create_autocmd("BufWritePre", {
						pattern = "*",
						callback = function(args)
							require("conform").format({ bufnr = args.buf })
						end,
					}),
				})
				vim.keymap.set({ "n", "v" }, "<leader>z", function()
					conform.format({
						async = false,
						timeout_ms = 500,
					})
				end)
			end,
		})
	end)

	use("Pocco81/auto-save.nvim")
	use("wbthomason/packer.nvim")
	use("typescript-language-server/typescript-language-server")
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",

		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})
	use("ThePrimeagen/vim-be-good")
	use("xna00/unocss-language-server")
	use("AlexvZyl/nordic.nvim")
	use("eslint/eslint")
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("prettier/prettier")
	use("ThePrimeagen/harpoon")

	use("mbbill/undotree")
	use("dense-analysis/ale")
	use("tpope/vim-fugitive")
	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	})
	use({ "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp" })
	use("Matsuuu/custom-elements-language-server")
	use({
		"creativenull/efmls-configs-nvim",
		tag = "v1.*", -- tag is optional, but recommended
		requires = { "neovim/nvim-lspconfig" },
	})
	use("MunifTanjim/eslint.nvim")
	use("L3MON4D3/LuaSnip")
	use("nvim-tree/nvim-tree.lua")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")
	use("ellisonleao/gruvbox.nvim")
	use({
		"rebelot/terminal.nvim",
		config = function()
			require("terminal").setup()
		end,
	})
end)
