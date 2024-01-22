local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = require("cmp_nvim_lsp").on_attach
local lspconfig = require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"cssls",
		"html",
		"emmet_ls",
		"emmet_language_server",
		"eslint",
		"kotlin_language_server",
		"gopls",
		"rust_analyzer",
		"tailwindcss",
		"htmx",
		"pylsp",
		"volar",
		"emmet_ls",
		"ltex",
		"ast_grep",
		"golangci_lint_ls",
		"cssmodules_ls",
		"clangd",
		"jdtls",
	},
})

lspconfig.lua_ls.setup({
	capabilities = capabilities,
})
lspconfig.clangd.setup({
	capabilities = capabilities,
})
lspconfig.cssmodules_ls.setup({
	capabilities = capabilities,
})
lspconfig.golangci_lint_ls.setup({
	capabilities = capabilities,
})

lspconfig.ast_grep.setup({
	capabilities = capabilities,
})
lspconfig.jdtls.setup({
	capabilities = capabilities,
	cmd = { "jdtls" },
	settings = {
		java = {
			signatureHelp = {
				enabled = true,
			},
		},
	},
})
lspconfig.ltex.setup({
	capabilities = capabilities,
})
lspconfig.tsserver.setup({
	capabilities = capabilities,
})
lspconfig.eslint.setup({
	capabilities = capabilities,
})
lspconfig.cssls.setup({
	capabilities = capabilities,
})
lspconfig.eslint.setup({
	capabilities = capabilities,
})
lspconfig.kotlin_language_server.setup({
	capabilities = capabilities,
})
lspconfig.gopls.setup({
	capabilities = capabilities,
})
lspconfig.html.setup({
	capabilities = capabilities,
})
lspconfig.emmet_ls.setup({
	capabilities = capabilities,
})
lspconfig.emmet_language_server.setup({
	capabilities = capabilities,
})
lspconfig.rust_analyzer.setup({
	capabilities = {
		experimental = {
			serverStatusNotification = true,
		},
		general = {
			positionEncodings = { "utf-16" },
		},
		textDocument = {
			callHierarchy = {
				dynamicRegistration = false,
			},
			codeAction = {
				codeActionLiteralSupport = {
					codeActionKind = {
						valueSet = {
							"",
							"quickfix",
							"refactor",
							"refactor.extract",
							"refactor.inline",
							"refactor.rewrite",
							"source",
							"source.organizeImports",
						},
					},
				},
				dataSupport = true,
				dynamicRegistration = true,
				isPreferredSupport = true,
				resolveSupport = {
					properties = { "edit" },
				},
			},
			completion = {
				completionItem = {
					commitCharactersSupport = false,
					deprecatedSupport = false,
					documentationFormat = { "markdown", "plaintext" },
					preselectSupport = false,
					snippetSupport = false,
				},
				completionItemKind = {
					valueSet = {
						1,
						2,
						3,
						4,
						5,
						6,
						7,
						8,
						9,
						10,
						11,
						12,
						13,
						14,
						15,
						16,
						17,
						18,
						19,
						20,
						21,
						22,
						23,
						24,
						25,
					},
				},
				contextSupport = false,
				dynamicRegistration = false,
			},
			declaration = {
				linkSupport = true,
			},
			definition = {
				dynamicRegistration = true,
				linkSupport = true,
			},
			diagnostic = {
				dynamicRegistration = false,
			},
			documentHighlight = {
				dynamicRegistration = false,
			},
			documentSymbol = {
				dynamicRegistration = false,
				hierarchicalDocumentSymbolSupport = true,
				symbolKind = {
					valueSet = {
						1,
						2,
						3,
						4,
						5,
						6,
						7,
						8,
						9,
						10,
						11,
						12,
						13,
						14,
						15,
						16,
						17,
						18,
						19,
						20,
						21,
						22,
						23,
						24,
						25,
						26,
					},
				},
			},
			formatting = {
				dynamicRegistration = true,
			},
			hover = {
				contentFormat = { "markdown", "plaintext" },
				dynamicRegistration = true,
			},
			implementation = {
				linkSupport = true,
			},
			inlayHint = {
				dynamicRegistration = true,
				resolveSupport = {
					properties = { "textEdits", "tooltip", "location", "command" },
				},
			},
			publishDiagnostics = {
				dataSupport = true,
				relatedInformation = true,
				tagSupport = {
					valueSet = { 1, 2 },
				},
			},
			rangeFormatting = {
				dynamicRegistration = true,
			},
			references = {
				dynamicRegistration = false,
			},
			rename = {
				dynamicRegistration = true,
				prepareSupport = true,
			},
			semanticTokens = {
				augmentsSyntaxTokens = true,
				dynamicRegistration = false,
				formats = { "relative" },
				multilineTokenSupport = false,
				overlappingTokenSupport = true,
				requests = {
					full = {
						delta = true,
					},
					range = false,
				},
				serverCancelSupport = false,
				tokenModifiers = {
					"declaration",
					"definition",
					"readonly",
					"static",
					"deprecated",
					"abstract",
					"async",
					"modification",
					"documentation",
					"defaultLibrary",
				},
				tokenTypes = {
					"namespace",
					"type",
					"class",
					"enum",
					"interface",
					"struct",
					"typeParameter",
					"parameter",
					"variable",
					"property",
					"enumMember",
					"event",
					"function",
					"method",
					"macro",
					"keyword",
					"modifier",
					"comment",
					"string",
					"number",
					"regexp",
					"operator",
					"decorator",
				},
			},
			signatureHelp = {
				dynamicRegistration = false,
				signatureInformation = {
					activeParameterSupport = true,
					documentationFormat = { "markdown", "plaintext" },
					parameterInformation = {
						labelOffsetSupport = true,
					},
				},
			},
			synchronization = {
				didSave = true,
				dynamicRegistration = false,
				willSave = true,
				willSaveWaitUntil = true,
			},
			typeDefinition = {
				linkSupport = true,
			},
		},
		window = {
			showDocument = {
				support = true,
			},
			showMessage = {
				messageActionItem = {
					additionalPropertiesSupport = false,
				},
			},
			workDoneProgress = true,
		},
		workspace = {
			applyEdit = true,
			configuration = true,
			didChangeConfiguration = {
				dynamicRegistration = false,
			},
			didChangeWatchedFiles = {
				dynamicRegistration = true,
				relativePatternSupport = true,
			},
			inlayHint = {
				refreshSupport = true,
			},
			semanticTokens = {
				refreshSupport = true,
			},
			symbol = {
				dynamicRegistration = false,
				symbolKind = {
					valueSet = {
						1,
						2,
						3,
						4,
						5,
						6,
						7,
						8,
						9,
						10,
						11,
						12,
						13,
						14,
						15,
						16,
						17,
						18,
						19,
						20,
						21,
						22,
						23,
						24,
						25,
						26,
					},
				},
			},
			workspaceEdit = {
				resourceOperations = { "rename", "create", "delete" },
			},
			workspaceFolders = true,
		},
	},
	settings = {
		["rust-analyzer"] = {
			diagnostics = {
				enable = true,
			},
		},
	},
})
lspconfig.volar.setup({
	capabilities = capabilities,
})
lspconfig.tailwindcss.setup({
	capabilities = capabilities,
})
lspconfig.htmx.setup({
	capabilities = capabilities,
})
lspconfig.pylsp.setup({
	capabilities = capabilities,
	settings = {
		pylsp = {
			plugins = {
				pycodestyle = {
					ignore = { "W391" },
					maxLineLength = 100,
				},
			},
		},
	},
})
require("luasnip.loaders.from_vscode").lazy_load()

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-he>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<space>wa", vim.lsp.buf.add_workspace_folder, opts)
		vim.keymap.set("n", "<space>wr", vim.lsp.buf.remove_workspace_folder, opts)
		vim.keymap.set("n", "<space>wl", function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})
