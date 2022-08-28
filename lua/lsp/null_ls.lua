local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.formatting_sync({}, 2000)
				end,
			})
		end
	end,

	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = {} }),
		formatting.autopep8,
		diagnostics.flake8,
		formatting.stylua,
		formatting.gofmt,
		formatting.rustfmt,
	},
})
