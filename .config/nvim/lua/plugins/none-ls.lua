return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.diagnostics.pylint,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.black,
			},
		})
		vim.keymap.set("n", "<leader>fm", function()
			vim.lsp.buf.format({ async = true })
		end, {})
	end,
}
