return {
	{
		"echasnovski/mini.extra",
		config = function()
			require("mini.extra").setup({})
		end,
	},
	{
		"echasnovski/mini.comment",
		config = function()
			require("mini.comment").setup({})
		end,
	},
	{
		"echasnovski/mini.indentscope",
		config = function()
			require("mini.indentscope").setup({})
		end,
	},

	{
		"echasnovski/mini.jump2d",
		config = function()
			require("mini.jump2d").setup({
				mappings = {
					start_jumping = "gw",
				},
			})
		end,
	},

	{
		"echasnovski/mini.pairs",
		config = function()
			require("mini.pairs").setup({})
		end,
	},

	{
		"echasnovski/mini.surround",
		config = function()
			require("mini.surround").setup({})
		end,
	},

	{
		"echasnovski/mini.clue",
		config = function()
			-- mini.clue setup
			require("mini.clue").setup({
				triggers = {
					-- Leader key
					{ mode = "n", keys = "<Leader>" },
					{ mode = "x", keys = "<Leader>" },

					-- Built-in completion
					{ mode = "i", keys = "<C-x>" },
					-- Marks
					{ mode = "n", keys = "'" },
					{ mode = "n", keys = "`" },
					{ mode = "x", keys = "'" },
					{ mode = "x", keys = "`" },

					-- Registers
					{ mode = "n", keys = '"' },
					{ mode = "x", keys = '"' },
					{ mode = "i", keys = "<C-r>" },
					{ mode = "c", keys = "<C-r>" },

					-- Window commands
					{ mode = "n", keys = "<C-w>" },

					-- keymaps key
					{ mode = "n", keys = "f" },
					{ mode = "n", keys = "s" },
					{ mode = "n", keys = "g" },
					{ mode = "n", keys = "c" },
				},
				clues = {
					require("mini.clue").gen_clues.builtin_completion(),
					require("mini.clue").gen_clues.g(),
					require("mini.clue").gen_clues.marks(),
					require("mini.clue").gen_clues.registers(),
					require("mini.clue").gen_clues.windows(),
					require("mini.clue").gen_clues.z(),
				},
				window = {
					delay = 200,
				},
			})
		end,
		{
			"echasnovski/mini.pick",
			config = function()
				require("mini.pick").setup({
					window = {
						width = 0.8,
						height = 0.8,
						border = "rounded",
					},
				})
			end,
		},
	},
}
