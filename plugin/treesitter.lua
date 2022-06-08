require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "python",
        "cpp",
        "javascript",
        "html",
        "css",
        "scss",
        "rust",
        "c",
    },
  sync_install = false,
  ignore_install = {},
  highlight = {
    enable = true,
    disable = {},
    additional_vim_regex_highlighting = true,
  },
  indent = {
      enable = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm"
    }
  },
    playground = {
        enable = true,
        use_virtual_text = true,
        lint_events = {"BuffWrite", "CursorHold"},
    }
}

