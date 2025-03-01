return {
    "m4xshen/autoclose.nvim",
    config = function()
        require("autoclose").setup({
            options = {
                disabled_filetypes = {},
                disable_when_touch = false,
                touch_regex = "[%w(%[{]",
                pair_spaces = true,
                auto_indent = false,
                disable_command_mode = false,
            },
            keys = {
                ["|"] = { escape = false, close = true, pair = "||" },
            }
        })
    end
}
