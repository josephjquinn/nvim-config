--setup
vim.g.mapleader = " "

-- general
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
vim.keymap.set("n", "<leader>ah", ":nohl<CR>", { desc = "Clear search highlights" })
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode", silent = true })

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- mini.pick
vim.keymap.set("n", "fb", "<cmd>Pick buffers<cr>", { desc = "Search open files" })
vim.keymap.set("n", "ff", "<cmd>Pick files tool='git'<cr>", { desc = "Search all files" })
vim.keymap.set("n", "fw", "<cmd>Pick grep_live tool='git'<cr>", { desc = "Grep all files" })
vim.keymap.set("n", "fh", "<cmd>Pick help<cr>", { desc = "Search help tags" })
vim.keymap.set("n", "fs", "<cmd>Pick spellsuggest<cr>", { desc = "Search help tags" })
vim.keymap.set("n", "fc", "<cmd>Pick colorschemes<cr>", { desc = "Search help tags" })

-- terminal
vim.keymap.set(
	"n",
	"<leader><leader>",
	"<cmd>ToggleTerm direction=horizontal<CR>",
	{ desc = "Toggle horizontal terminal", silent = true }
)

-- lf
vim.keymap.set("n", "-", "<cmd>Lf<cr>", { desc = "Lf", silent = true })

-- lazygit
vim.keymap.set("n", "<leader>i", "<cmd>LazyGit<cr>", { desc = "Lazygit", silent = true })
