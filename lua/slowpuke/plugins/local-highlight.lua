return {
    "tzachar/local-highlight.nvim",
    config = function()
        require('local-highlight').setup({
            file_types = {"ada", "bash", "c", "lisp", "haskell", "rust"},
            hlgroup = 'Search',
            cw_hlgroup = nil,
            insert_mode = false,
        })
    end
}
