return {
    "Djancyp/better-comments.nvim",
    config = function()
        require('better-comment').Setup({
            tags = {
                {
                    name = "BAD",
                    fg = "red",
                    bg = "white",
                    bold = true,
                    virtual_text = "",
                }
            }
        })
    end
}
