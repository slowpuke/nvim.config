return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require('todo-comments').setup({
            search = {
                pattern = [[\b(KEYWORDS)\b]],
            },
            vim.keymap.set('n', '<leader>td', '<cmd>TodoQuickFix<cr>')
        })
    end
}
