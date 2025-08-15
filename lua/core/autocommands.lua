vim.api.nvim_create_autocmd("VimLeave", {
	command = "set guicursor=a:ver1",
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		MiniExtra = require("mini.extra")
		local opts = { buffer = ev.buf, silent = true }
		vim.keymap.set(
			"n",
			"cm",
			"<cmd>Pick lsp scope='references'<CR>",
			vim.tbl_extend("force", opts, { desc = "Show LSP references" })
		)
		vim.keymap.set(
			"n",
			"<leader>gD",
			vim.lsp.buf.declaration,
			vim.tbl_extend("force", opts, { desc = "Go to declaration" })
		)

		vim.keymap.set(
			"n",
			"cd",
			"<cmd>Pick lsp scope='definition'<CR>",
			vim.tbl_extend("force", opts, { desc = "Show LSP Definitions" })
		)

		vim.keymap.set(
			"n",
			"ci",
			"<cmd>Pick lsp scope='implemenation'<CR>",
			vim.tbl_extend("force", opts, { desc = "Show LSP implementations" })
		)

		vim.keymap.set(
			{ "n", "v" },
			"<leader>ca",
			vim.lsp.buf.code_action,
			vim.tbl_extend("force", opts, { desc = "See available code actions" })
		)

		vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, vim.tbl_extend("force", opts, { desc = "Smart rename" }))

		vim.keymap.set(
			"n",
			"<leader>D",
			"<cmd>Pick diagnostic scope='current'<CR>",
			vim.tbl_extend("force", opts, { desc = "Show buffer diagnostics" })
		)

		vim.keymap.set(
			"n",
			"<leader>d",
			vim.diagnostic.open_float,
			vim.tbl_extend("force", opts, { desc = "Show line diagnostics" })
		)

		vim.keymap.set(
			"n",
			"[d",
			vim.diagnostic.goto_prev,
			vim.tbl_extend("force", opts, { desc = "Go to previous diagnostic" })
		)

		vim.keymap.set(
			"n",
			"]d",
			vim.diagnostic.goto_next,
			vim.tbl_extend("force", opts, { desc = "Go to next diagnostic" })
		)

		vim.keymap.set(
			"n",
			"K",
			vim.lsp.buf.hover,
			vim.tbl_extend("force", opts, { desc = "Show documentation for what is under cursor" })
		)

		vim.keymap.set("n", "cf", function()
			vim.lsp.buf.format({ async = true })
		end, vim.tbl_extend("force", opts, { desc = "Format buffer" }))
	end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		-- try_lint without arguments runs the linters defined in `linters_by_ft`
		-- for the current filetype
		require("lint").try_lint()

		-- You can call `try_lint` with a linter name or a list of names to always
		-- run specific linters, independent of the `linters_by_ft` configuration
		require("lint").try_lint("cspell")
	end,
})

