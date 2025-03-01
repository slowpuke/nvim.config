return {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
}

-- [[
-- ysiw) surround word
-- ds] delete around me
-- cs'" change quotes
-- ]]
