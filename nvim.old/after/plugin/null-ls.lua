local null_ls = require("null-ls")

null_ls.setup(
    {
        sources = {
            null_ls.builtins.formatting.stylua,
            null_ls.builtins.formatting.black,
            null_ls.builtins.formatting.isort,
            null_ls.builtins.formatting.ruff,
            null_ls.builtins.code_actions.eslint_d
        }
    }
)