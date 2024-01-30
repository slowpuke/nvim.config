require('local-highlight').setup({
    file_types = {'python', 'c', 'rust', 'common lisp'},
    disable_file_types = {'tex'},
    hlgroup = 'Search',
    cw_hlgroup = nil,
    -- Whether to display highlights in INSERT mode or not
    insert_mode = false,
})
