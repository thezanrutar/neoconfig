vim.pack.add{
  -- dependencies
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/rafamadriz/friendly-snippets"},

  -- core
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
  { src = "https://github.com/Saghen/blink.cmp" },

  -- telescope
  { src = "https://github.com/nvim-telescope/telescope.nvim" },

  -- colorscheme
  { src = "https://github.com/rose-pine/neovim", name = "rose-pine" },

  -- extras
  { src = "https://github.com/mbbill/undotree" },
  { src = "https://github.com/tpope/vim-fugitive" },
}

require("thezanrutar.set")
require("thezanrutar.remap")
