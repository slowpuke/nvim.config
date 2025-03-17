return {
    "monkoose/nvlime",
    dependencies = {
        "monkoose/parsley",
        "kovisoft/paredit",
    },
    ft = "lisp";
    config = function ()
        vim.g.nvlime_config = {
            leader = "<leader>c",
            user_contrib_initializers = nil,
            -- autodoc = {
            --     enabled = false,
            --     max_level = 5,
            --     max_lines = 50,
            -- },
            main_window = {
                position = "right",
                size = "",
            },
            -- floating_window = {
            --     border = "single",
            --     scroll_step = 3,
            -- },
            cmp = { enabled = true },
            arglist = { enabled = true },
        }
        require('cmp').setup.filetype({'lisp'}, {
            sources = {
                { name = 'nvlime' },
                { name = 'buffer', keyword_length = 3}
            },
        })
    end
}
