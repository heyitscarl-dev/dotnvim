return {
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {
            labels = "asdfjklöghqweruiopyxcvbnmtz",
            search = {
                mode = "fuzzy"
            }
        },
        keys = {
            { "r", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
        }
    }
}
