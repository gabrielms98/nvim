return {
    "sbdchd/neoformat",
    config = function()
        vim.cmd("let g:neoformat_try_formatprg = 1")
        vim.cmd("let b:neoformat_basic_format_retab = 1")
        vim.cmd("let b:neoformat_basic_format_trim = 1")
        vim.cmd("let b:neoformat_basic_format_align = 1")
        vim.cmd("let b:neformat_run_all_formatters = 1")
        vim.cmd("let g:neoformat_enabled_python = ['black', 'autopep8', 'isort']")

        vim.keymap.set("n", "<leader>nft", ":Neoformat<CR>")
    end
}