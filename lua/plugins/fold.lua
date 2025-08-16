return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
        provider_selector = function(bufnr, filetype, buftype)
            return { "lsp", "indent" }
        end,
        preview = {
            win_config = {
                border = { "", "─", "", "", "", "─", "", "" }
            }
        }
    },
    config = function(_, opts)
        vim.opt.foldcolumn = "1"
        vim.opt.foldlevel = 99
        vim.opt.foldlevelstart = 99
        vim.opt.foldenable = true

        vim.keymap.set("n", "zC", require("ufo").closeAllFolds, { desc = "Close all folds" })
        vim.keymap.set("n", "zO", require("ufo").openAllFolds, { desc = "Open all folds" })
        vim.keymap.set("n", "zK", function()
            local winid = require("ufo").peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end, {})

        require("ufo").setup(opts)
    end
}
