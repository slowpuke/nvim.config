return {
    "water-sucks/darkrose.nvim",
    config = function ()
        require("darkrose").setup({
            styles = {
                bold = true,
                italic = false,
            }
        })
        vim.cmd.colorscheme("darkrose")
    end
}
