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
			lang = "python",
			storage = {
				home = "/home/jquinn/repos/lc-practice",
				cache = "/home/jquinn/repos/lc-practice/.cache",
			},
		},
	},
}
