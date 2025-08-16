return {
    {
        "kdheepak/lazygit.nvim",
        lazy = true,
        cmd = {
            "LazyGit",
            "LazyGitConfig",
            "LazyGitCurrentFile",
            "LazyGitFilter",
            "LazyGitFilterCurrentFile",
        },
        dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
        keys = {
            { "<leader>lg", ":LazyGit<cr>", desc = "LazyGit" }
        }
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = {
            current_line_blame = true,
        },
    }
}
