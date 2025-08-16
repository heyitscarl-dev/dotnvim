return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    opts = {
        completions = {
            blink = { enabled = true }
        },

        heading = { enabled = false },
    }
}
