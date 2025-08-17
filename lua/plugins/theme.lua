return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            custom_highlights = function(colors)
                return {
                    -- General
                    FloatBorder = { fg = colors.peach },

                    -- Telescope
                    TelescopeResultsNormal = { fg = colors.text, bg = colors.mantle },
                    TelescopeResultsBorder = { fg = colors.mantle, bg = colors.mantle },
                    TelescopePreviewNormal = { fg = colors.text, bg = colors.mantle },
                    TelescopePreviewBorder = { fg = colors.mantle, bg = colors.mantle },

                    TelescopePromptNormal = { bg = colors.surface0 },
                    TelescopePromptBorder = { fg = colors.surface0, bg = colors.surface0 },
                    TelescopePromptTitle = { fg = colors.crust, bg = colors.peach },

                    -- Ufo 
                    UfoFoldedEllipsis = { fg = colors.subtext0, bg = colors.surface1 },

                    -- Lazygit
                    LazyGitFloat = { bg = colors.base },
                    LazyGitBorder = { fg = colors.base, bg = colors.base },

                    -- Snacks                    
                    SnacksInputBorder = { fg = colors.surface0, bg = colors.surface0 },
                    SnacksInputPrompt = { fg = colors.text, bg = colors.surface0 },
                    SnacksInputNormal = { fg = colors.text, bg = colors.surface0 },
                    SnacksInputTitle = { fg = colors.crust, bg = colors.peach },
                }
            end,
            auto_integrations = true,
        },
        config = function(_, opts)
            require("catppuccin").setup(opts)
            vim.cmd("colorscheme catppuccin")
        end
    }
}
