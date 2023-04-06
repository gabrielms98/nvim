local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<C-i>', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fp', function()
	builtin.grep_string({search = vim.fn.input("Grep > ")})
end)

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')
