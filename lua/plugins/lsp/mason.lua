return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			ensure_installed = {
				"lua_ls",
				"pyright",
				"ruff",
				"ts_ls",
				"cssls",
				"clangd",
			},
      automatic_enable = {
        exclude = {
          'lua_ls'
        }
      },
		})

		mason_tool_installer.setup({
			ensure_installed = {
				"stylua",
				"flake8",
				"luacheck",
				"prettier",
				"stylelint",
				"pylint",
				"eslint_d",
				"debugpy",
				"latexindent",
				"black",
        "cspell",
			},
		})
	end,
}
