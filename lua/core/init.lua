local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("core.options")
require("core.keymaps")
require("core.autocommands")

local plugins = {
	{ import = "plugins.ui" },
	{ import = "plugins.ide" },
	{ import = "plugins.lsp" },
	{ import = "plugins.editor" },
}
local opts = { checker = {
	enabled = true,
	notify = false,
}, change_detection = {
	notify = false,
} }

require("lazy").setup(plugins, opts)
