return {
    {
        "mason-org/mason-lspconfig.nvim",
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
        opts = {},
        config = function(_, opts)
            require("mason-lspconfig").setup(opts)

            vim.lsp.config("lua_ls", {
                root_dir = vim.fn.fnamemodify(debug.getinfo(1, 'S').source:sub(2), ':p:h'),
            })
        end,
    },
    {
        "saghen/blink.cmp",
        dependencies = { "rafamadriz/friendly-snippets" },
        version = '1.*',
        opts = {
            keymap = {
                preset = "enter",

                ["<M-j>"] = { "select_next", "fallback" },
                ["<M-k>"] = { "select_prev", "fallback" },
            },
            signature = {
                enabled = true,
                window = {
                    show_documentation = false
                }
            },
            completion = {
                documentation = { auto_show = true }
            },
            sources = {
                default = { "lazydev", "lsp", "path", "snippets", "buffer" },
                providers = {
                    lazydev = {
                        name = "LazyDev",
                        module = "lazydev.integrations.blink",
                        score_offset = 100
                    }
                }
            }
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        opts = {
            indent = { enable = true },
            highlight = { enable = true },
            textobjects = {
                select = {
                    enable = false
                }
            }
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end
    }
}
