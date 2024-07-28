return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				-- Lua formating Go here
				null_ls.builtins.formatting.stylua,
				-- Javascript linter and formatter
				null_ls.builtins.formatting.prettier,
				-- null_ls.builtins.diagnostics.eslint_d,

				-- null_ls.builtins.diagnostics.eslint_d,
				-- null_ls.builtins.code_actions.eslint_d,
				-- null_ls.builtins.formatting.eslint_d,
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
