return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    opts = {
        completions = {
            blink = { enabled = true }
        },

        heading = { enabled = false },
    },
    config = function(_, opts)
        require("render-markdown").setup(opts)

        vim.keymap.set("n", "<Leader>md", ":RenderMarkdown toggle<CR>", { desc = "Toggle render-markdown" })
    end
}
