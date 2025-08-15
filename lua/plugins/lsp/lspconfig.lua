return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- -- diagnostic signs
    -- local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    -- for type, icon in pairs(signs) do
    --   local hl = "DiagnosticSign" .. type
    --   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    -- end
    --
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = { globals = { "vim", "require" } },
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
    })
  end,
}
