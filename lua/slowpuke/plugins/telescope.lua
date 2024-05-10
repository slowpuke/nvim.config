return {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>f', builtin.find_files, {})
        -- vim.keymap.set('n', '<leader>ff', builtin.git_files, {})
        -- vim.keymap.set('n', '<leader>fs', function()
        -- 	builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        vim.keymap.set('n', '<leader>g', builtin.live_grep, {})  
    end
}
