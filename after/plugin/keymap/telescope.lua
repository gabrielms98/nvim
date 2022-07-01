local Remap = require("gabrielmartins.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>fp", function()
    require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
end)
nnoremap("ff", function()
    require('telescope.builtin').git_files()
end)
nnoremap("<leader>ff", function()
    require('telescope.builtin').find_files()
end)

