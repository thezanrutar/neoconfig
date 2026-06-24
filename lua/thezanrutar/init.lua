vim.pack.add({
	"https://www.github.com/lewis6991/gitsigns.nvim",
	"https://www.github.com/echasnovski/mini.nvim",
	"https://www.github.com/ibhagwan/fzf-lua",
	{
		src = "https://www.github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
		build = ":TSUpdate",
	},
	"https://www.github.com/neovim/nvim-lspconfig",
	"https://www.github.com/mason-org/mason.nvim",
	"https://www.github.com/creativenull/efmls-configs-nvim",
	{
		src = "https://www.github.com/saghen/blink.cmp",
		version = vim.version.range("1.*"),
	},
	"https://www.github.com/L3MON4D3/LuaSnip",
})

function packadd(name)
	vim.cmd("packadd " .. name)
end

require("thezanrutar.set")
require("thezanrutar.remap")
require("thezanrutar.autocmds")
