--setup
vim.g.mapleader = " "

-- general
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader>ah", ":nohl<CR>", { desc = "Clear search highlights" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode", silent = true })

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- pickers (mini) 
vim.keymap.set("n", "fb", "<cmd>Pick buffers<cr>", { desc = "Search open buffers" })
vim.keymap.set("n", "ff", "<cmd>Pick files tool='rg'<cr>", { desc = "Search all files" })

vim.keymap.set("n", "fe", "<cmd>Pick files_all<cr>", {
	desc = "Pick all files (incl hidden)",
})
vim.keymap.set("n", "fw", "<cmd>Pick grep_live tool='rg'<cr>", { desc = "Grep all files" })
vim.keymap.set("n", "fh", "<cmd>Pick help<cr>", { desc = "Search help tags" })
vim.keymap.set("n", "fs", "<cmd>Pick spellsuggest<cr>", { desc = "Search spellcheck" })
vim.keymap.set("n", "fc", "<cmd>Pick colorschemes<cr>", { desc = "Search colorschemds" })
vim.keymap.set("n", "fh", "<cmd>Pick git_hunks<cr>", { desc = "Search git changes" })

-- terminal
vim.keymap.set(
	"n",
	"<leader><leader>",
	"<cmd>ToggleTerm direction=float<CR>",
	{ desc = "Toggle horizontal terminal", silent = true }
)

-- lf
vim.keymap.set("n", "-", "<cmd>Lf<cr>", { desc = "Lf", silent = true })

-- lazygit
vim.keymap.set("n", "<leader>i", "<cmd>LazyGit<cr>", { desc = "Lazygit", silent = true })

-- spell check toggle
vim.keymap.set("n", "<leader>ls", "<cmd>set spell!<cr>", { desc = "Toggle spell check" })

-- vimtex
vim.keymap.set("n", "<leader>lc", "<cmd>VimtexCompile<cr>", { desc = "Compile Latex" })

-- NeoTree
-- keymap.set("n", "<leader>e", "<cmd>Neotree toggle position=left<cr>", { desc = "Toggle Explorer Left " })
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle reveal position=left<cr>", { desc = "Toggle Explorer Left " })
vim.keymap.set("n", "<leader>o", function()
	if vim.bo.filetype == "neo-tree" then
		vim.cmd("wincmd p")
	else
		vim.cmd.Neotree("focus")
	end
end, { desc = "Toggle Explorer Focus" })
vim.keymap.set("n", "-", function()
	require("neo-tree.command").execute({
		toggle = true,
		reveal = true,
		action = "focus",
		position = "float",
	})
end, { desc = "Toggle Explorer Float" })

-- transparency
vim.keymap.set("n", "<leader>-", "<cmd>TransparentToggle<cr>")
