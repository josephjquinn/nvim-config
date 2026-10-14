return {
	{
		"kawre/leetcode.nvim",
		build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
		opts = {
			arg = "lc",
			lang = "python3",
			storage = {
				home = "/Users/josephquinn/repos/lc-practice",
				cache = "/Users/josephquinn/repos/lc-practice/.cache",
			},
		},
	},
}
