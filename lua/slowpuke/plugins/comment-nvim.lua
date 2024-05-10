return {
    "numToStr/Comment.nvim",
    config = function()
        require('Comment').setup({
            toggler = {
                line = 'gc',
            },
        })
    end,
    lazy = false,
}
