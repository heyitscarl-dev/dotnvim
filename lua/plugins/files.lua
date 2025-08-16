return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim"
        },
        opts = {
            defaults = {
                theme = "center",
                sorting_strategy = "ascending",
                layout_config = {
                    horizontal = {
                        prompt_position = "top",
                        preview_width = 0.4,
                    }
                }
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                }
            }
        },
        config = function(_, opts)
            require("telescope").setup(opts)
            require("telescope").load_extension("ui-select")
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
            vim.keymap.set("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope lsp references" })
            vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope diagnostics" })
            vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Telescope git commits" })
            vim.keymap.set("n", "<leader>fb", builtin.builtin, { desc = "Telescope builtins" })
        end
    },
    {
        "stevearc/oil.nvim",
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        lazy = false,
        opts = {
            skip_confirm_for_simple_edits = true,
            keymaps = {
                ["<Esc>"] = { "actions.close", mode = "n" }
            },
            float = {
                preview_split = "right"
            }
        },
        config = function(_, opts)
            require("oil").setup(opts)
            vim.keymap.set("n", "-", ":Oil<CR>", { desc = "Oil" })
        end
    }
}
