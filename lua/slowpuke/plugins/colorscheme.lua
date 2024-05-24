return {
    "water-sucks/darkrose.nvim",
    config = function ()
        require("darkrose").setup({
            styles = {
                bold = true,
                italic = false,
            },
            colors = {
                bg = "#0E0C15",
            },
        })
        vim.cmd.colorscheme("darkrose")
    end
}
