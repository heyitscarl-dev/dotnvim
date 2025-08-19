return {
    {
        "echasnovski/mini.nvim",
        version = "*",
        config = function()
            require("mini.ai").setup()
            require("mini.pairs").setup()
            require("mini.comment").setup()
            require("mini.move").setup()
            require("mini.splitjoin").setup()
            require("mini.surround").setup()
            require("mini.statusline").setup()
            require("mini.hipatterns").setup({
                highlighters = {
                    fixme = { pattern = '%f[%w]()FIXME()%f[%W]', group = 'MiniHipatternsFixme' },
                    hack  = { pattern = '%f[%w]()HACK()%f[%W]', group = 'MiniHipatternsHack' },
                    todo  = { pattern = '%f[%w]()TODO()%f[%W]', group = 'MiniHipatternsTodo' },
                    note  = { pattern = '%f[%w]()NOTE()%f[%W]', group = 'MiniHipatternsNote' },
                }
            })
        end
    },
    {
        "folke/snacks.nvim",
        opts = {
            input = {}
        }
    }
}
