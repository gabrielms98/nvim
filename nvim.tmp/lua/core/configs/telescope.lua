local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
vim.keymap.set("n", "<C-l>", builtin.diagnostics, {})
vim.keymap.set(
    "n",
    "<leader>fp",
    function()
        builtin.grep_string({search = vim.fn.input("Grep > ")})
    end
)

vim.keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, {desc = "[?] Find recently opened files"})
vim.keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, {desc = "[ ] Find existing buffers"})
vim.keymap.set(
    "n",
    "<leader>/",
    function()
        -- You can pass additional configuration to telescope to change theme, layout, etc.
        require("telescope.builtin").current_buffer_fuzzy_find(
            require("telescope.themes").get_dropdown {
                winblend = 10,
                previewer = false
            }
        )
    end,
    {desc = "[/] Fuzzily search in current buffer"}
)

vim.keymap.set("n", "<leader>fp", require("telescope.builtin").live_grep, {desc = "[S]earch by [G]rep"})

-- Enable telescope fzf native, if installed
pcall(require("telescope").load_extension, "fzf")