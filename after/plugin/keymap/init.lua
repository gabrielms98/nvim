local Remap = require("gabrielmartins.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Yes, I do it like this
inoremap("jj", "<Esc>")

nmap("<C-b>", ":Explore<CR>")
nmap("<leader>gs", ":Neogit<CR>")
