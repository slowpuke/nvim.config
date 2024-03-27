vim.g.mapleader = " "

-- moving blocks of highlighted code in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- replaces the highlighted word 
vim.keymap.set("n", "<leader>n", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
