-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

-- parser_config.jinja2 = {
--     install_info = {
--         url = "/Users/gabrielmartins/Documents/git/tree-sitter-jinja2",
--         files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
--         -- optional entries:
--         branch = "master", -- default branch in case of git repo if different from master
--         generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--         requires_generate_from_grammar = false -- if folder contains pre-generated src/parser.c
--     },
--     filetype = "htmldjango" -- if filetype does not match the parser name
-- }

require("nvim-treesitter.configs").setup(
    {
        -- A list of parser names, or "all" (the four listed parsers should always be installed)
        ensure_installed = {"c", "cpp", "javascript", "python", "rust", "lua", "html", "css", "scss"},
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = true,
        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,
        highlight = {
            -- `false` will disable the whole extension
            enable = true,
            -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
            -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
            -- Using this option may slow down your editor, and you may see some duplicate highlights.
            -- Instead of true it can also be a list of languages
            additional_vim_regex_highlighting = false
        },
        rainbow = {
            enable = true,
            extended_mode = false,
            max_file_lines = nil
        }
    }
)
