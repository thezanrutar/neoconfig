vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- W also saves like w
vim.api.nvim_create_user_command('W', 'w', {})
vim.api.nvim_create_user_command('Q', 'q', {})

-- moves selection dn, up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- removes linebreak bellow and appends it with a space
vim.keymap.set("n", "J", "mzJ`z")

-- <C-d>, <C-u> (pg dn, up) cursor stays in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search result stays in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- <leader>p keeps the yanked item in clipboard, deletes and voids the delete
vim.keymap.set("x", "<leader>p", "\"_dP")

-- system clipboard with yank
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- <C-c> becomes escape
vim.keymap.set("i", "<C-c>", "<Esc>")

-- <leader>s opens replacement for all the instances of word bellow the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
