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
		markdown = { "prettier" },
		rust = { "rust_analyzer" },
		python = { "black" },
		jsx = { "prettier" },
		tsx = { "prettier" },
		vue = { "prettier" },
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
