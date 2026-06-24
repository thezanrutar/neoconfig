packadd("gitsigns.nvim")

require("gitsigns").setup({
  signs = {
    add = { text = "\u{2590}" },
    change = { text = "\u{2590}" },
    delete = { text = "\u{2590}" },
    topdelete = { text = "\u{25e6}" },
    changedelete = { text = "\u{25cf}" },
    untracked = { text = "\u{25cb}" },
  },
  signcolumn = true,
  current_line_blame = false,
})

vim.keymap.set("n", "]h", function()
  require("gitsigns").next_hunk()
end, { desc = "Next git hunk" })

vim.keymap.set("n", "]h", function()
  require("gitsigns").previous_hunk()
end, { desc = "Previous git hunk" })

vim.keymap.set("n", "<leader>hs", function()
  require("gitsigns").stage_hunk()
end, { desc = "Stage git hunk" })

vim.keymap.set("n", "<leader>hr", function()
  require("gitsigns").reset_hunk()
end, { desc = "Reset git hunk" })

vim.keymap.set("n", "<leader>hp", function()
  require("gitsigns").preview_hunk()
end, { desc = "Preview git hunk" })

vim.keymap.set("n", "hb", function()
  require("gitsigns").blame_line({ full = true })
end, { desc = "Blame line" })

vim.keymap.set("n", "<leader>hB", function()
  require("gitsigns").toggle_current_line_blame()
end, { desc = "Toggle inline blame" })

vim.keymap.set("n", "<leader>hd", function()
  require("gitsigns").diffthis()
end, { desc = "Diff this" })
