return {
    "S1M0N38/love2d.nvim",
    -- lazy = false,
    cmd = "LoveRun",
    ft = { "lua" },
    opts = { },
    keys = {
        { "<leader>l", desc = "LÖVE" },
        { "<leader>ll", "<cmd>LoveRun<cr>", desc = "Run LÖVE" },
        { "<leader>vs", "<cmd>LoveStop<cr>", desc = "Stop LÖVE" },
    },
}
