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
        view = {
          dim = true,
          n_steps_ahead = 0,
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
      local clue = require("mini.clue")

      clue.setup({
        triggers = {
          { mode = "n", keys = "<Leader>" },
          { mode = "x", keys = "<Leader>" },

          { mode = "i", keys = "<C-x>" },

          { mode = "n", keys = "'" },
          { mode = "n", keys = "`" },
          { mode = "x", keys = "'" },
          { mode = "x", keys = "`" },

          { mode = "n", keys = '"' },
          { mode = "x", keys = '"' },
          { mode = "i", keys = "<C-r>" },
          { mode = "c", keys = "<C-r>" },

          { mode = "n", keys = "<C-w>" },

          { mode = "n", keys = "f" },
          { mode = "n", keys = "s" },
          { mode = "n", keys = "g" },
          { mode = "n", keys = "c" },
          { mode = "n", keys = "l" },
        },

        clues = {
          clue.gen_clues.builtin_completion(),
          clue.gen_clues.g(),
          clue.gen_clues.marks(),
          clue.gen_clues.registers(),
          clue.gen_clues.windows(),
          clue.gen_clues.z(),
        },

        window = {
          delay = 200,
        },
      })
    end,
  },

  {
    "josephjquinn/mini.pick",
    dependencies = {
      "echasnovski/mini.icons",
    },
    config = function()
      require("mini.icons").setup({})

      local pick = require("mini.pick")

      pick.setup({
        window = {
          width = 0.8,
          height = 0.8,
          border = "rounded",
        },
      })

      -- Custom picker: includes hidden files (.gitignore, .env, etc.)
      pick.registry.files_all = function()
        pick.builtin.cli({
          command = {
            "rg",
            "--files",
            "--hidden",
          },
        })
      end
    end,
  },
}
