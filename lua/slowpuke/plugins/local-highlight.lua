return {
    "tzachar/local-highlight.nvim",
    config = function()
        require('local-highlight').setup({
            file_types = {"ada", "bash", "c", "common lisp", "haslkell", "rust"},
            hlgroup = 'Search',
            cw_hlgroup = nil,
            insert_mode = false,
        })
    end
}
