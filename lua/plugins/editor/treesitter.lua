vim.treesitter.language.register("bash", "zsh")

vim.api.nvim_create_autocmd("FileType", {
	callback = function(ev)
		local ok = pcall(vim.treesitter.start, ev.buf)
		if not ok then
			vim.bo[ev.buf].syntax = "on"
		end
	end,
})

return {
	"lewis6991/ts-install.nvim",
	lazy = false,
	config = function()
		require("ts-install").setup({
			auto_update = false,
			ensure_install = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"tsx",
				"css",
				"c",
				"cpp",
				"rust",
				"bash",
			},
		})
	end,
}
