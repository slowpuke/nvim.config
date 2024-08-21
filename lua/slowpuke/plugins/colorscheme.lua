return {
    "water-sucks/darkrose.nvim",
    config = function ()
        require("darkrose").setup({
            styles = {
                bold = true,
                italic = false,
            },
            colors = {
                -- #0E0C15 is for kitty Floraverse
                bg = "#0E0C15",
            },
        })
        vim.cmd.colorscheme("darkrose")
    end
}
