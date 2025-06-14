return {
  'zbirenbaum/copilot.lua',
  config = function()
    require('copilot').setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = '<C-l>',
          next = '<C-j>',
          prev = '<C-k>',
          dismiss = '<C-\\>',
        },
      },
    }
  end,
}
