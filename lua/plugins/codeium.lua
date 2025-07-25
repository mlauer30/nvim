return{
  'Exafunction/codeium.vim',
  event = 'BufEnter',
  config = function()
    -- Optional: disable default bindings if you want custom ones
    vim.g.codeium_disable_bindings = 1
    -- Custom keymaps (optional)
    vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<C-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<C-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}
